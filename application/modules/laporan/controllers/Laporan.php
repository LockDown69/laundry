 <?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Laporan extends MX_Controller {


	function __construct()
	{
		parent:: __construct();

		// load model
		$this->load->model('M_laporan');

    // check session login


	}


	function index()
	{
		// view
		$data = array(
			'namamodule' 	=> "laporan",
			'namafileview' 	=> "v_laporan",

			// variable
			'getLaporan'=> $this->M_laporan->getLaporan(),
		);
		echo Modules::run('template/tampilLaundry', $data);
	}


	// delete
	function hapusLaporan( $id )
	{
		$this->M_laporan->deleteLaporan( $id );
		// add session
		$this->session->set_flashdata('msg', '<div class="alert alert-mint"><strong>Hapus Berhasil !</strong><p>Data berhasil dihapus ke dalam database pada tanggal '.date('d F Y H:i:s A').'</p></div>');

		// redirect
		redirect('laporan');

	}

	// Search

}
