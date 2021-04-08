<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Template extends MX_Controller {

	function __construct()
	{
		parent:: __construct();
		//load model

		$this->load->model('M_template');
	}

	// view core templating
	public function index()
	{
        
		$this->load->view('view_template_laundry');
	}

	public function tampilLaundry($data)
	{
		

		$this->load->view('view_template_laundry',$data);
	}


	public function tampilRegister($data)
	{

		$this->load->view('view_template_register',$data);
	}

	public function tampilPetugas($data)
	{

		$this->load->view('view_template_petugas',$data);
	}


}
