<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_register extends CI_Model {



	// get data akun
	function getLogin()
	{
		$this->db->select('*')
				 ->from('user');
		$query = $this->db->get();
		return $query;
	}

	//
	function insertDataregisterUser()
	{
		$username 	= $this->input->post('username');
		$password 	= $this->input->post('password');
		$nama 	= $this->input->post('nama');
		// $level = $this->input->post('level');

		$data = array (
			'username'	=>$username,
			'password' =>md5($password),
			'nama' =>$nama,
			'level' =>2,
		);

		$this->db->insert('user', $data);
	}



	function searchbarang()
	{
		$nama_barang 	= $this->input->post('nama_barang');
		$merk_barang 	= $this->input->post('merk_barang');
		$this->db->select('*')
				 ->from('barang')
				 ->like('nama_barang', $nama_barang)
				 ->like('merk_barang', $merk_barang);;
		$query = $this->db->get();
		return $query;
	}
}
