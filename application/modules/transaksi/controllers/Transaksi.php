 <?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Transaksi extends MX_Controller {


	function __construct()
	{
		parent:: __construct();

		// load model
		$this->load->model('M_transaksi');

    // check session login


	}


	function index()
	{
		// view
		$data = array(
			'namamodule' 	=> "transaksi",
			'namafileview' 	=> "v_transaksi",

			// variable
			'getTransaksi'=> $this->M_transaksi->getTransaksi(),
			'getUser'=> $this->M_transaksi->getUser(),
			'getPaket'=> $this->M_transaksi->getPaket(),
			'joinTransaksi'=> $this->M_transaksi->joinTransaksi(),
		);
		echo Modules::run('template/tampilLaundry', $data);
	}

	// simpan
	function simpanTransaksi()
	{
		$this->M_transaksi->insertTransaksi();
		// add session
		$this->session->set_flashdata('msg', '<div class="alert alert-mint"><strong>Simpan Berhasil !</strong><p>Data berhasil disimpan ke dalam database pada tanggal '.date('d F Y H:i:s A').'</p></div>');

		// redirect
		redirect('transaksi');
	}

	// delete
	function hapusTransaksi( $id )
	{
		$this->M_transaksi->deleteTransaksi( $id );
		// add session
		$this->session->set_flashdata('msg', '<div class="alert alert-mint"><strong>Hapus Berhasil !</strong><p>Data berhasil dihapus ke dalam database pada tanggal '.date('d F Y H:i:s A').'</p></div>');

		// redirect
		redirect('transaksi');

	}

	function simpanLaporan()
	{
		$this->M_transaksi->insertLaporan();
		// add session
		$this->session->set_flashdata('msg', '<div class="alert alert-mint"><strong>Simpan Berhasil !</strong><p>Data berhasil disimpan ke dalam database pada tanggal '.date('d F Y H:i:s A').'</p></div>');

		// redirect
		redirect('transaksi');
	}

	// Search

}
