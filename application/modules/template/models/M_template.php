<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class M_template extends CI_Model {

	public function __construct(){

		parent::__construct();

	}
	public function tampil_pengguna_kesiswaan($username){

		$query = "SELECT username FROM tb_login where username='$username' AND status='1'";
		$result = $this->db->query($query);
		$nama = '';

		foreach($result->result_array() as $row)
		{
             $nama = $row['username'];
		}

		return $nama;
	}

	function lastDates()
	{
		$query = $this->db->query("SELECT * FROM tb_agenda ORDER BY created_at DESC LIMIT 1");
		return $query;

	}

	function get($id_p)
	{
		$this->db->select('tb_grup_profile.*, tb_grup.*')
				 ->join('tb_grup', 'tb_grup_profile.id_grup = tb_grup.id_grup')
				 ->from('tb_grup_profile')
				 ->where('tb_grup_profile.id_profile',$id_p);
		$query = $this->db->get();
		return $query;
	}

	function getLimitProfile($id_p){
		$this->db->select('*')
				 ->from('tb_profile')
				 ->where('id_user',$id_p);
		$query = $this->db->get();
		return $query->row('limit_grup');
	}


	// function getText($id_g){
	// 	$this->db->select('nama_grup')
	// 			 ->from('tb_grup')
	// 			 ->where('id_grup',$id_g);
	// 	$query = $this->db->get();
	// 	return $query;
	// }
}
