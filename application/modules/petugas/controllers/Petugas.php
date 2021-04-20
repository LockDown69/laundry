 <?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Petugas extends MX_Controller {


	function __construct()
	{
		parent:: __construct();

		// load model
		$this->load->model('M_petugas');

    // check session login


	}


	function index()
	{
		// view
		$data = array(
			'namamodule' 	=> "petugas",
			'namafileview' 	=> "v_petugas",

			// variable
			'getPetugas'=> $this->M_petugas->getPetugas(),
		);
		echo Modules::run('template/tampilLaundry', $data);
	}

	// simpan
	function simpanPetugas()
	{
		$this->M_petugas->insertPetugas();
		// add session
		$this->session->set_flashdata('msg', '<div class="alert alert-mint"><strong>Simpan Berhasil !</strong><p>Data berhasil disimpan ke dalam database pada tanggal '.date('d F Y H:i:s A').'</p></div>');

		// redirect
		redirect('petugas');
	}

	// update
	function editPetugas()
	{
		$this->M_petugas->updatePetugas();
		// add session
		$this->session->set_flashdata('msg', '<div class="alert alert-mint"><strong>Update Berhasil !</strong><p>Data berhasil diperbarui ke dalam database pada tanggal '.date('d F Y H:i:s A').'</p></div>');

		// redirect
		redirect('petugas');
	}

	// delete
	function hapusPetugas( $id )
	{
		$this->M_petugas->deletePetugas( $id );
		// add session
		$this->session->set_flashdata('msg', '<div class="alert alert-mint"><strong>Hapus Berhasil !</strong><p>Data berhasil dihapus ke dalam database pada tanggal '.date('d F Y H:i:s A').'</p></div>');

		// redirect
		redirect('petugas');

	}

	// Search

}
