<?php

/*
* Table Fieldtype
*
* @extends Fieldtype
* @class Table_fieldtype
*/

class Table_fieldtype extends Fieldtype {
	/**
	* Constructor
	*
	* Assign basic properties to this fieldtype, useful in listing available fieldtypes.
	* Also defines the MySQL column format for fields of this type.
	*/
	function __construct () {
		parent::__construct();
	 
		$this->compatibility = array('publish','users','products','collections','forms');
		$this->enabled = TRUE;
		$this->fieldtype_name = 'Table';
		$this->fieldtype_description = 'Table Format';
		$this->validation_error = '';
		$this->db_column = 'TEXT';
	}
	
	/**
	* Set Height
	*
	* Textareas can carry a height attribute.  This can be set dynamically here.  It is stored
	* in the data array and so can also be set via the $this->data(array('height' => '100px')); means.
	*
	* @param string $height
	*
	* @return object $fieldtype_object
	*/
	function height ($height) {
		$this->data['height'] = $height;
		
		return $this;
	}
	
	/**
	* Output Shared
	*
	* Perform actions shared between admin- and frontend-outputs.  Compile attributes of this
	* fieldtype object into an HTML attribute line.
	*
	* @return string $attributes
	*/
	function output_shared () {
		// set defaults
		if ($this->width == FALSE) {
			$this->width = '275px';
		}
		
		if (!isset($this->data['height']) or $this->data['height'] == FALSE) {
			$this->data['height'] = '80px';
		}
		
		// prep classes
		if ($this->required == TRUE) {
			$this->field_class('required');
		}
		
		$this->field_class('textarea');
		
		// add validator names to class list
		foreach ($this->validators as $validator) {
			$this->field_class($validator);
		}
		
		// prep final attributes	
		$placeholder = ($this->placeholder !== FALSE) ? ' placeholder="' . $this->placeholder . '" ' : '';
		
		$attributes = array(
						'name' => $this->name,
						'style' => 'width: ' . $this->width . '; height: ' . $this->data['height'],
						'class' => implode(' ', $this->field_classes)
						);
						
		// compile attributes
		$attributes = $this->compile_attributes($attributes);
		
		return $attributes;
	}
	
	/**
	* Output Admin
	*
	* Returns the field with it's <label> in an <li> suitable for the admin forms.
	*
	* @return string $return The HTML to be included in a form
	*/
	function output_admin () {
		if ($this->value === FALSE and $this->CI->input->post($this->name) == FALSE) {
			$this->value($this->default);
		}
		
		// we may be passed a serialized array
		if (@is_array(unserialize($this->value))) {
			$this->value = unserialize($this->value);
		}
		
		$attributes = $this->output_shared();
		
		$help = ($this->help == FALSE) ? '' : '<div class="help">' . $this->help . '</div>';
		
		// build HTML
		/*
		$return = '<li>
						<label for="' . $this->name . '">' . $this->label . '</label>
						<textarea ' . $attributes . '>' . htmlspecialchars($this->value) . '</textarea>
						' . $help . '<br/><div class="help">Please use = symbol to separate the column content</div>
					</li>';
		*/
		
		
		
		$return = "<li><script src='branding/custom/js/fieldtypes.table.js'></script>";
		$return .= "<label>".$this->name."<br/>(<a onclick='addFieldTypesTableRow(this)' class='button'>Add Row</a>)</label>";
		
		if(is_array($this->value)){
			foreach ($this->value["field"] as $key=>$option) {
				$return .= "<div style='margin-left:150px;'><textarea name='".$this->name."[field][]'>".$this->value["field"][$key]."</textarea> ";
				$return .= "<textarea name='".$this->name."[value][]'>".$this->value["value"][$key]."</textarea> (<a onclick='deleteFieldTypesTableRow(this)' class='button'>Delete</a>)</div>";
			}
		}else{
			$return .= "<div style='margin-left:150px;'><textarea name='".$this->name."[field][]'></textarea> ";
				$return .= "<textarea name='".$this->name."[value][]'></textarea> (<a onclick='deleteFieldTypesTableRow(this)' class='button'>Delete</a>)</div>";
		}
		
		$return .= "</li>";
		
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
		if ($this->value === FALSE) {
			if ($this->CI->input->post($this->name) == FALSE) {
				$this->value($this->default);
			}
			elseif ($this->CI->input->post($this->name) != FALSE) {
				$this->value($this->CI->input->post($this->name));
			}
		}
		
		$attributes = $this->output_shared();
		
		// we may be passed a serialized array
		if (@is_array(unserialize($this->value))) {
			$this->value = unserialize($this->value);
		}else{
			return "";
		}
		

		// build HTML
		$return = "<table class='".$this->name."' ".$attributes.">";
		
		foreach($this->value["field"] as $key=>$val){
			$return .= "<tr class='".($key%2==0?"even":"odd")."'>";
			$return .= "<td>".$this->value["field"][$key]."</td>";
			$return .= "<td>".$this->value["value"][$key]."</td>";
			$return .= "<tr>";
		}
		$return .= "</table>";
		
		
		return $return;
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
		
		// run $this->validators
		if (!empty($this->validators)) {
			foreach ($this->validators as $validator) {
				if ($validator == 'whitespace') {
					$rules[] = 'trim';
				}
				elseif ($validator == 'alphanumeric') {
					$rules[] = 'alpha_numeric';
				}
				elseif ($validator == 'strip_tags') {
					$rules[] = 'strip_tags';
				}
			}
		}
		
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
		
		$array = $this->CI->input->post($this->name);
		
		if (!is_array($array)) {
			$array = array($array);
		}
		
		return serialize($array);
		
		return $this->CI->input->post($this->name);
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
					'help' => $this->CI->input->post('help')
				);
	}
}