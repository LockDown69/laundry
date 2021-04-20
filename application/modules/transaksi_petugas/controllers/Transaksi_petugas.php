 <?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Transaksi_petugas extends MX_Controller {


	function __construct()
	{
		parent:: __construct();

		// load model
		$this->load->model('M_transaksi_petugas');

    // check session login


	}


	function index()
	{
		$id_user = $this->session->userdata('id_user');
		// view
		$data = array(
			'namamodule' 	=> "transaksi_petugas",
			'namafileview' 	=> "v_transaksi_petugas",

			// variable
			'getTransaksi'=> $this->M_transaksi_petugas->getTransaksi(),
			'getUser'=> $this->M_transaksi_petugas->getUser($id_user),
			'getPaket'=> $this->M_transaksi_petugas->getPaket(),
			'joinTransaksi'=> $this->M_transaksi_petugas->joinTransaksi($id_user),
		);
		echo Modules::run('template/tampilPetugas', $data);
	}

	// simpan
	function simpanTransaksi()
	{
		$this->M_transaksi_petugas->insertTransaksi();
		// add session
		$this->session->set_flashdata('msg', '<div class="alert alert-mint"><strong>Simpan Berhasil !</strong><p>Data berhasil disimpan ke dalam database pada tanggal '.date('d F Y H:i:s A').'</p></div>');

		// redirect
		redirect('transaksi_petugas');
	}


	// delete
	function hapusTransaksi( $id )
	{
		$this->M_transaksi_petugas->deleteTransaksi( $id );
		// add session
		$this->session->set_flashdata('msg', '<div class="alert alert-mint"><strong>Hapus Berhasil !</strong><p>Data berhasil dihapus ke dalam database pada tanggal '.date('d F Y H:i:s A').'</p></div>');

		// redirect
		redirect('transaksi_petugas');

	}

	function simpanLaporan()
	{
		$this->M_transaksi_petugas->insertLaporan();
		// add session
		$this->session->set_flashdata('msg', '<div class="alert alert-mint"><strong>Simpan Berhasil !</strong><p>Data berhasil disimpan ke dalam database pada tanggal '.date('d F Y H:i:s A').'</p></div>');

		// redirect
		redirect('transaksi_petugas');
	}

	// Search

}
