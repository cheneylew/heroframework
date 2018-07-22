<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Admincp Login Controller
 *
 * Log the administrator in and out of the dashboard.
 *
 * @copyright Electric Function, Inc.
 * @author Electric Function, Inc.
 * @package Hero Framework
 */
class Login extends CI_Controller
{
    function __construct()
    {
        parent::__construct();

        $this->load->model('admincp/notices');
        $this->load->helper('admincp/get_notices');
        $this->load->helper('ssl');
    }

    function index()
    {
        $this->load->view(branded_view('cp/login.php'));
    }

    function go()
    {
        if ($this->user_model->login($this->input->post('username'), $this->input->post('password'))) {
            $this->notices->SetNotice("你已经登录成功.");
            redirect('/admincp');

            return TRUE;
        } else {
            $this->notices->SetError('用户名或密码错误.');
            redirect('/admincp/login');
            return FALSE;
        }
    }

    function logout()
    {
        $this->user_model->logout();

        redirect('admincp');

        return TRUE;
    }
}