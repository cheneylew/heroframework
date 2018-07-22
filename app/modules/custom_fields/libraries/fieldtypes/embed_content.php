<?php

/*
* Relationship Fieldtype
*
* @extends Fieldtype
* @class Relationship_fieldtype
*/

class Embed_content_fieldtype extends Fieldtype {
	/**
	* Constructor
	*
	* Assign basic properties to this fieldtype, useful in listing available fieldtypes.
	* Also defines the MySQL column format for fields of this type.
	*/
	function __construct () {
		parent::__construct();
	 
		$this->compatibility = array('publish');
		$this->enabled = TRUE;
		$this->fieldtype_name = 'Embed Content';
		$this->fieldtype_description = 'Select one or more content items (of any content type) from a list.';
		$this->validation_error = '';
		$this->db_column = 'TEXT';
	}
	
	/**
	* Output Shared
	*
	* Perform actions shared between admin- and frontend-outputs.
	*
	* @return void
	*/
	function output_shared () {
		$this->field_class('select');
		$this->field_class('relationship');
		
		// add validator names to class list
		foreach ($this->validators as $validator) {
			$this->field_class($validator);
		}
		
		if ($this->data['allow_multiple'] == TRUE) {
			$field = $this->create('multiselect');
		}
		else {
			$field = $this->create('select');
		}
		
		// build options
		$this->CI->load->model('publish/content_model');
		$content = $this->CI->content_model->get_contents(array('type' => $this->data['content_type']));
		
		$options = array();
		
		if ($this->required != TRUE) {
			// add an empty option
			$options[] = array('name' => '', 'value' => '');
		}

		if (!empty($content)) {
			foreach ($content as $item) {
				$options[] = array('name' => $item[$this->data['field_name']], 'value' => $item['id']);
			}
		}
		
		$field->label($this->label);
		$field->name($this->name);
		$field->value($this->value);
		$field->default_value($this->default);
		$field->options($options);
		$field->required($this->required);
		$field->validators($this->validators);
		$field->placeholder($this->placeholder);
		$field->id($this->id);
		
		return $field;
	}
	
	/**
	* Output Admin
	*
	* Returns the field with it's <label> in an <li> suitable for the admin forms.
	* We will actually wrap the (multi)select fieldtype.
	*
	* @return string $return The HTML to be included in a form
	*/
	function output_admin () {
		
		// we may be passed a serialized array
		if (@is_array(unserialize($this->value))) {
			$this->value = unserialize($this->value);
		}
		
		// build options
		$this->CI->load->model('publish/content_model');
		$content = $this->CI->content_model->get_contents(array('type' => $this->data['content_type']));
		

		$return = "<li><script src='branding/default/js/jquery-ui-1.8.2.min.js'></script><script src='branding/custom/js/fieldtypes.embed_content.js'></script><textarea class='hidden_content_option' style='display:none;'>".$this->get_content_option($content)."</textarea><style>@import 'branding/custom/css/fieldtypes.embed_content.css';@import 'branding/default/css/black-tie/jquery-ui-1.8.2.custom.css';</style>";
		$return .= "<label>".$this->name."<br/></label>";
		
		$return .= "<input type='button' class='button' onclick='addEmbedContentLinkage(this)' value='Add Linkage'/> <input type='button' class='button' onclick='addEmbedContent(\"".$this->data['content_type']."\")' value='Add Content'/> <table id='".$this->name."' class='embed_content' border='1'>";
		$return .= "<thead><th></th><th>Content</th><th>View</th><th>Delete</th></thead>";
		$return .= "<tbody>";
		if(is_array($this->value)){
			foreach ($this->value as $key=>$val) {
				$return .= "<tr>";
				$return .= "<td><span class='ui-icon ui-icon-arrowthick-2-n-s'></span></td>";
				$return .= "<td>";
				if (!empty($content)) {
					$return .= $this->get_content_option($content, $val);
				}
				$return .= "</td>";

				$return .= "<td><a href='".$this->content_url."' class='button embed_url' target='_blank'>View</a></td>";
				$return .= "<td><a class='button' onclick='deleteEmbedContent(this)'>Delete</a></td>";
				$return .= "</tr>";
			}
		};
		$return .= "</tbody>";
		$return .= "</table>";
		$return .= "</li>";
		
		

		
		return $return;
	}
	
	function get_content_option($content, $val=""){
		$this->content_url = "";
		$return = "<select name='".$this->name."[]' onchange='changeEmbedContentLink(this)'>";
		foreach ($content as $item) {
			$return .= "<option value='".$item['id']."' ".($val==$item["id"]?"selected":"")." url='".$item["url"]."'>". $item[$this->data['field_name']]."</option>";
			
			if($val==$item["id"]){
				$this->content_url = $item["url"];
			}
		}
		$return .= "</select>";
		return $return;
	}
	
	/**
	* Output Frontend
	*
	* Returns the isolated field.  Likely called from the {custom_field} template function.
	*
	* @return string $return The HTML to be included in a form.
	*/
	function output_frontend () {
		//$field = $this->output_shared();
		
		if (@is_array(unserialize($this->value))) {
			$this->value = unserialize($this->value);
		}else{
			return "";
		}
		
		$this->CI->load->model('publish/content_model');
		foreach($this->value as $key=>$val){
			$content[] = $this->CI->content_model->get_content($val);
		}
		$this->CI->smarty->assign($this->name, $content);
		return "";
	}
	
	/**
	* Validation Rules
	*
	* Return an array of CodeIgniter form_validation rules for this fieldtype.  These are used
	* by form_builder to run a validation across all fields at once using CodeIgniter.
	*
	* @return array $rules
	*/
	function validation_rules () {
		$rules = array();
		
		// check required
		if ($this->required == TRUE) {
			$rules[] = 'required';
		}
		
		return $rules;
	}
	
	/**
	* Validate Post
	*
	* This validation is outside of CodeIgniter's form_validation library.  It is run specifically
	* for this field after it passes the major form_validation check.  Not all fieldtypes
	* will require it.  If an error is found, it should be stored in $this->validation_error
	* (using $this->label to refer to the field) and should return FALSE so that the form
	* processor in form_builder knows there was an error.  It will pull the error from
	* $this->validation_error.
	*
	* @return boolean
	*/
	function validate_post () {
		// nothing extra to validate here other than the rulers in $this->validators
		return TRUE;
	}
	
	/**
	* Post to Value
	*
	* Convert the $_POST value to the value that should be inserted into the database.
	*
	* @return string $db_value
	*/
	function post_to_value () {
		if ($this->data['allow_multiple'] == TRUE) {
			$array = $this->CI->input->post($this->name);
		
			if (!is_array($array)) {
				$array = array($array);
			}
			
			return serialize($array);
		}
		else {
			return $this->CI->input->post($this->name);
		}	
	}
	
	/**
	* Field Form
	*
	* Build the form that will be used to add/edit fields of this type.
	* 
	* @return string $form Built using form_builder.
	*/
	function field_form ($edit_id = FALSE) {
		// build fieldset with admin_form which is used when editing a field of this type
		$this->CI->load->library('custom_fields/form_builder');
		$this->CI->form_builder->reset();
		
		// gather content types
	    $this->CI->load->model('publish/content_type_model');
	    $content_types = $this->CI->content_type_model->get_content_types();
	    
	    $options = array();
	    foreach ($content_types as $type) {
	    	$options[] = array('name' => $type['name'], 'value' => $type['id']);
	    }
	    	  
	   	$content_type = $this->CI->form_builder->add_field('select');
	   	$content_type->label('Content Type')
	   			   ->required(TRUE)
	   			   ->name('content_type')
	   			   ->options($options);
	   			   
	    $field_name = $this->CI->form_builder->add_field('text');
	    $field_name->label('Field Name')
	               ->name('field_name')
	               ->required(TRUE)
	               ->value("title")
	               ->help('Enter the "system_name" for the field that you want to use to identify the content items.  For example, for a content type
	               		   like news articles, you might enter "headline" if you have a Headline field.  You can confirm the accuracy of this fieldname
	               		   by going to Publish > Content Types > Manage Fields (for the content type you have selected above).');
	   			   
	   	$allow_multiple = $this->CI->form_builder->add_field('checkbox');
	    $allow_multiple->label('Allow Multiple Relationships')
			    	  ->name('allow_multiple')
			    	  ->help('If checked, the user can select one or many content items from the list.');

	    $help = $this->CI->form_builder->add_field('textarea');
	    $help->label('Help Text')
	    	 ->name('help')
	    	 ->width('500px')
	    	 ->height('80px')
	    	 ->help('This help text will be displayed beneath the field.  Use it to guide the user in responding correctly.');

	    	  
	    if (!empty($edit_id)) {
	    	$this->CI->load->model('custom_fields_model');
	    	$field = $this->CI->custom_fields_model->get_custom_field($edit_id);
	    	
	    	$help->value($field['help']);
	    	$field_name->value($field['data']['field_name']);
	    	$content_type->value($field['data']['content_type']);
	    	$allow_multiple->value($field['data']['allow_multiple']);
	    }	  
	          
		return $this->CI->form_builder->output_admin();      
	}
	
	/**
	* Field Form Process
	*
	* Process the submission of $this->field_form() and return an array of data to be used in custom_fields_model->new_custom_field().
	*
	* Available keys for the returned array: name, type, default (string/array), help, required, validators (array), data (array), 
	*										 options (array), width
	*
	* @return array
	*/
	function field_form_process () {
		// build array for database
		
		// $options will be automatically serialized by the custom_fields_model::new_custom_field() method
		
		return array(
					'name' => $this->CI->input->post('name'),
					'type' => $this->CI->input->post('type'),
					'help' => $this->CI->input->post('help'),
					'data' => array(
								'allow_multiple' => ($this->CI->input->post('allow_multiple')) ? TRUE : FALSE,
								'field_name' => $this->CI->input->post('field_name'),
								'content_type' => $this->CI->input->post('content_type')
							)
				);
	}
}