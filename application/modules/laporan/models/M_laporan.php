<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_laporan extends CI_Model {



	// get data akun
	function getLaporan()
	{
		$this->db->select('*')
				 ->from('laporan');
		$query = $this->db->get();
		return $query;
	}


	function deleteLaporan( $id )
	{
		// query
		$this->db->where('id_laporan', $id)->delete('laporan');

	}


}
