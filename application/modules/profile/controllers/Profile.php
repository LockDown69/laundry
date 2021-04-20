 <?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Profile extends MX_Controller {


	function __construct()
	{
		parent:: __construct();

		// load model
		$this->load->model('M_profile');

    // check session login


	}


	function index()
	{
		$id_user = $this->session->userdata('id_user');
		// view
		$data = array(
			'namamodule' 	=> "profile",
			'namafileview' 	=> "v_profile",

			// variable
			'getProfile'=> $this->M_profile->getProfile($id_user),
		);
		echo Modules::run('template/tampilLaundry', $data);
	}

	function profile_petugas()
	{
		$id_user = $this->session->userdata('id_user');
		// view
		$data = array(
			'namamodule' 	=> "profile",
			'namafileview' 	=> "v_profile_petugas",

			// variable
			'getProfile'=> $this->M_profile->getProfile($id_user),
		);
		echo Modules::run('template/tampilPetugas', $data);
	}

	// update
	function editProfile()
	{
		$this->M_profile->updateProfile();
		// add session
		$this->session->set_flashdata('msg', '<div class="alert alert-mint"><strong>Update Berhasil !</strong><p>Data berhasil diperbarui ke dalam database pada tanggal '.date('d F Y H:i:s A').'</p></div>');

		// redirect
		redirect('profile');
	}

	function editProfilePetugas()
	{
		$this->M_profile->updateProfilePetugas();
		// add session
		$this->session->set_flashdata('msg', '<div class="alert alert-mint"><strong>Update Berhasil !</strong><p>Data berhasil diperbarui ke dalam database pada tanggal '.date('d F Y H:i:s A').'</p></div>');

		// redirect
		redirect('profile/profile_petugas');
	}

	// Search

}
