<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_paket extends CI_Model {



	// get data akun
	function getPaket()
	{
		$this->db->select('*')
				 ->from('paket');
		$query = $this->db->get();
		return $query;
	}


	//
	function insertPaket()
	{
		$nama_paket 	= $this->input->post('nama_paket');
		$harga 	= $this->input->post('harga');
	
			$data = array (
		'nama_paket'	=>$nama_paket,
		'harga'	=>$harga,
	
			);
	
			// query
	
			$this->db->insert('paket', $data);	
	}

	function updatePaket()
	{
		$id   = $this->input->post('id');
		$nama_paket 	= $this->input->post('nama_paket');
		$harga 	= $this->input->post('harga');
	
			$data = array (
		'nama_paket'	=>$nama_paket,
		'harga'	=>$harga,
	
			);
	
			// query
	
			$this->db->where('id_paket', $id)->update('paket', $data);	
	}


	function deletePaket( $id )
	{
		// query
		$this->db->where('id_paket', $id)->delete('paket');

	}


}
