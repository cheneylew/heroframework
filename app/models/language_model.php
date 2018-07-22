<?php

/*
* Language Model
*
* Handle multi-language operation
*
*/

class Language_model extends CI_Model {
	function __construct() {
		parent::__construct();
		
	}
	
	/**
	* Get the available language list
	*
	* @return array Array of language list
	*/
	function get_language_list() {
		//$result = $this->db->get('language')->result_array();
		 
		return $this->config->item("language_list");
	}
	
	/**
	* Get the language_code at available language list, used in routes.php
	*
	* @return string language code which spearate by | 
	*/
	function get_language_string_list(){
		/*$this->db->select("GROUP_CONCAT(language_code separator '|') as lang_list");
		$result = $this->db->get("language")->result();
		return $result[0]->lang_list;*/
		$list = $this->get_language_list();
		foreach($list as $val){
			$lang_list[] = $val["language_code"];
		}
		return implode($lang_list, "|");
	}
	
	/**
	* Get the available language list as a formbuilder select/checkbox format
	*
	* @return array Array of language option
	*/
	function get_language_option(){
		$list = $this->get_language_list();
		
		foreach($list as $val){
			$lang_options[] = array('name' => $val["language_name"], 'value' => $val["language_id"]);
		}
		
		return $lang_options;
	}
	
	/**
	* Get the current language_id
	*
	* @return string language_id
	*/
	function get_current_language_id(){
		$list = $this->get_language_list();
		foreach($list as $val){
			if($this->uri->segment(1) == $val["language_code"]){
				return $val["language_id"];
			}
		}
		
		return false;
	}
	
	/**
	* Search the language by language_id, language_code
	*
	* @param object $criteria with language_id, language_code
	*
	* @return object Object of language 
	*/
	function get_language($criteria){
		$list = $this->get_language_list();
		
		foreach($list as $val){
			if(isset($criteria["language_id"]) && $criteria["language_id"] != "" && $val["language_id"]==$criteria["language_id"]){
				return $val;
			}
			if(isset($criteria["language_code"]) && $criteria["language_code"] != "" && $val["language_code"]==$criteria["language_code"]){
				return $val;
			}
		}

		return false;
	}
	
	/**
	* Get the language_name
	*
	* @param string $language_id
	*
	* @return string language_name
	*/
	function get_language_name($language_id){
		$list = $this->get_language_list();
		foreach($list as $val){
			if($val["language_id"] == $language_id){
				return $val["language_name"];
			}
		}
	}
	
	/**
	* Get the language_code
	*
	* @param string $language_id
	*
	* @return string language_name
	*/
	function get_language_code($language_id){
		$list = $this->get_language_list();
		foreach($list as $val){
			if($val["language_id"] == $language_id){
				return $val["language_code"];
			}
		}
	}
		
	/**
	* Check the language_code is in available language list
	*
	* @param string $language_code
	*
	* @return boolean true for existed
	*/
	function is_language($language_code){
		$list = $this->get_language_list();

		foreach($list as $val){
			if($val["language_code"] == $language_code){
				return true;
			}
		}
		
		return false;
	}
	
	/**
	* Get the default language code which store in config.php
	*
	* @return string language code
	*/
	function get_default_language_code(){
		return $this->config->item("language");
	}
}