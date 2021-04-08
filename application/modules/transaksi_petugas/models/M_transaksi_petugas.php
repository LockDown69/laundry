<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_transaksi_petugas extends CI_Model {



	// get data akun
	function getTransaksi()
	{
		$this->db->select('*')
				 ->from('transaksi');
		$query = $this->db->get();
		return $query;
	}

	function getUser($id_user)
	{

		$this->db->select('*')
				 ->from('user')
				->where('id_user', $id_user);
		$query = $this->db->get();
		return $query;
	}

	function getPaket()
	{
		$this->db->select('*')
				 ->from('paket');
		$query = $this->db->get();
		return $query;
	}


	function joinTransaksi($id_user)
	{
	  $this->db->select('*')
			   ->from('transaksi')
			   ->join('user','transaksi.id_user = user.id_user')
			   ->join('paket','transaksi.id_paket = paket.id_paket')
			   ->where('user.id_user',$id_user);
	$query = $this->db->get();
   
	  return $query;
   }


	//
	function insertTransaksi()
		{
			$id_user = $this->input->post('id_user');
			$id_paket = $this->input->post('id_paket');
			$nama_pemesan = $this->input->post('nama_pemesan');
			$jumlah_kg = $this->input->post('jumlah_kg');
			$jumlah_bayar = $this->input->post('jumlah_bayar');
			$keterangan = $this->input->post('keterangan');
		  
			$data = array (
			  'id_user' =>$id_user,
			  'id_paket' =>$id_paket,
			  'nama_pemesan' =>$nama_pemesan,
			  'jumlah_kg' =>$jumlah_kg,
			  'jumlah_bayar' =>$jumlah_bayar,
			  'keterangan' =>$keterangan,
		   );
		   $this->db->insert('transaksi', $data);
		  }
	

		  function insertLaporan()
		  {
			  $nama_pemesan = $this->input->post('nama_pemesan');
			  $jumlah_kg = $this->input->post('jumlah_kg');
			  $jumlah_bayar = $this->input->post('jumlah_bayar');
			  $tanggal_kembali = $this->input->post('tanggal_kembali');
			  $tanggal_dibayar = $this->input->post('tanggal_dibayar');
			  $keterangan = $this->input->post('keterangan');
			
			  $data = array (
				'nama_pemesan' =>$nama_pemesan,
				'jumlah_kg' =>$jumlah_kg,
				'jumlah_bayar' =>$jumlah_bayar,
				'tanggal_kembali' =>$tanggal_kembali,
				'tanggal_dibayar' =>$tanggal_dibayar,
				'keterangan' =>$keterangan,
			 );
			 $this->db->insert('laporan', $data);
			}



	function deleteTransaksi( $id )
	{
		// query
		$this->db->where('id_transaksi', $id)->delete('transaksi');

	}


}
