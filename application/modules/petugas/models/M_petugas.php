<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_petugas extends CI_Model {



	// get data akun
	function getPetugas()
	{
		$this->db->select('*')
				 ->from('user')
				 ->where('level = 2');
		$query = $this->db->get();
		return $query;
	}


	//
	function insertPetugas()
	{
		$username 	= $this->input->post('username');
		$password 	= $this->input->post('password');
		$nama 	= $this->input->post('nama');
		$alamat 	= $this->input->post('alamat');
		$no_tlp 	= $this->input->post('no_tlp');
		// $level = $this->input->post('level');

		$data = array (
			'username'	=>$username,
			'password' =>md5($password),
			'nama' =>$nama,
			'alamat' =>$alamat,
			'no_tlp' =>$no_tlp,
			'level' =>2,
		);

		$this->db->insert('user', $data);
	}

	function updatePetugas()
	{
		$id = $this->input->post("id");
		$username 	= $this->input->post('username');
		$nama 	= $this->input->post('nama');
		$alamat 	= $this->input->post('alamat');
		$no_tlp 	= $this->input->post('no_tlp');
		// $level = $this->input->post('level');

		$data = array (
			'username'	=>$username,
			'nama' =>$nama,
			'alamat' =>$alamat,
			'no_tlp' =>$no_tlp,
			'level' =>2,
		);
	
			// query
	
			$this->db->where('id_user', $id)->update('user', $data);	
	}


	function deletePetugas( $id )
	{
		// query
		$this->db->where('id_user', $id)->delete('user');

	}


}
