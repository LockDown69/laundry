 <?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Paket extends MX_Controller {


	function __construct()
	{
		parent:: __construct();

		// load model
		$this->load->model('M_paket');

    // check session login


	}


	function index()
	{
		// view
		$data = array(
			'namamodule' 	=> "paket",
			'namafileview' 	=> "v_paket",

			// variable
			'getPaket'=> $this->M_paket->getPaket(),
		);
		echo Modules::run('template/tampilLaundry', $data);
	}

	// simpan
	function simpanPaket()
	{
		$this->M_paket->insertPaket();
		// add session
		$this->session->set_flashdata('msg', '<div class="alert alert-mint"><strong>Simpan Berhasil !</strong><p>Data berhasil disimpan ke dalam database pada tanggal '.date('d F Y H:i:s A').'</p></div>');

		// redirect
		redirect('paket');
	}

	// update
	function editPaket()
	{
		$this->M_paket->updatePaket();
		// add session
		$this->session->set_flashdata('msg', '<div class="alert alert-mint"><strong>Update Berhasil !</strong><p>Data berhasil diperbarui ke dalam database pada tanggal '.date('d F Y H:i:s A').'</p></div>');

		// redirect
		redirect('paket');
	}

	// delete
	function hapusPaket( $id )
	{
		$this->M_paket->deletePaket( $id );
		// add session
		$this->session->set_flashdata('msg', '<div class="alert alert-mint"><strong>Hapus Berhasil !</strong><p>Data berhasil dihapus ke dalam database pada tanggal '.date('d F Y H:i:s A').'</p></div>');

		// redirect
		redirect('paket');

	}

	// Search

}
