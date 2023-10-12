<?php defined('BASEPATH') or exit('No direct script access allowed');

class pasienrujukan_model extends CI_Model
{
    private $_table = "pasienrujukan"; //nama table

    //field table
    public $id_rujukan;
    public $no_rujukan;
    public $puskesmas;
    // public $rumahsakit;
    public $kab_kota;
    public $poli;
    public $namapasien;
    public $umur;
    public $alamat;
    public $nopasien;
    public $diagnosa;
    public $tgl_pembuatan;
    public $pasien_rujukan_dari;

    public function rules()
    {
        return [
            ['field' => 'id_rujukan',
                'label' => 'ID Rujukan',
                'rules' => 'required|regex_match[/^[\p{L}\s]+$/]'],

            ['field' => 'no_rujukan',
                'label' => 'Nomor Rujukan',
                'rules' => 'required'],

            ['field' => 'puskesmas',
                'label' => 'Puskesmas',
                'rules' => 'required'],

            ['field' => 'rumahsakit',
                'label' => 'Rumah Sakit',
                'rules' => 'required'],

            ['field' => 'kab_kota',
                'label' => 'KAB/KOTA',
                'rules' => 'required'],

            ['field' => 'poli',
                'label' => 'POLI',
                'rules' => 'required'],

            ['field' => 'namapasien',
                'label' => 'Nama Pasien',
                'rules' => 'required'],

            ['field' => 'umur',
                'label' => 'Umur',
                'rules' => 'required'],

            ['field' => 'alamat',
                'label' => 'Alamat',
                'rules' => 'required'],

            ['field' => 'nopasien',
                'label' => 'No Pasien',
                'rules' => 'required'],

            ['field' => 'diagnosa',
                'label' => 'Diagnosa Sementara',
                'rules' => 'required'],

            ['field' => 'tgl_pembuatan',
                'label' => 'Tanggal Pembuatan',
                'rules' => 'required'],

        ];
    }
    public function cek_data($id)
    {
        do {
            $query = $this->db->get_where($this->_table, array(
                'id_rujukan' => $id,
            ));
        } while ($query->num_rows() > 0);
        return $query->num_rows();
    }

    public function getAll()
    {
        return $this->db->get($this->_table)->result();
    }

    public function countAllData()
    {
        return $this->db->count_all($this->_table);
    }

    public function getById($id)
    {
        return $this->db->get_where($this->_table, ["id_rujukan" => $id])->row();
    }
    public function getAllPasienRujukan()
    {
        return $this->db->get('pasienrujukan')->result();
    }
    public function getDataCatatAnak($id_catat)
    {
        $this->db->select('pencatatan.*, regisanak.*');
        $this->db->from('regisanak');
        $this->db->join('pencatatan', 'pencatatan.no_pasien = regisanak.no_pasien');
        $this->db->where("pencatatan.id_pencatatan", $id_catat);
        // $this->db->where("regisanak.status", 0);
        $query = $this->db->get();
        return $query->row_array();
    }


    public function save()
    {
        $post = $this->input->post();

        // $this->id_rujukan = $post["id_rujukan"];
        $this->no_rujukan = $post["no_rujukan"];
        $this->puskesmas = $post["puskesmas"];
        // $this->rumahsakit = $post["rumahsakit"];
        $this->kab_kota = $post["kab_kota"];
        $this->poli = $post["poli"];
        $this->namapasien = $post["namapasien"];
        $this->umur = $post["umur"];
        $this->alamat = $post["alamat"];
        $this->nopasien = $post["nopasien"];
        $this->diagnosa = $post["diagnosa"];
        $this->tgl_pembuatan = $post["tgl_pembuatan"];
        $this->pasien_rujukan_dari = $post["rujukan_dari"];

        return $this->db->insert($this->_table, $this);

    }
    public function getrujuk($id){
        return $this->db->query("select * from pencatatan join regisanak using (no_pasien) where id_pencatatan = '$id' ")->row();   
     }

    public function update()
    {
        $post = $this->input->post();
        $this->id_rujukan = $post["id_rujukan"];
        $this->no_rujukan = $post["no_rujukan"];
        $this->puskesmas = $post["puskesmas"];
        // $this->rumahsakit = $post["rumahsakit"];
        $this->kab_kota = $post["kab_kota"];
        $this->poli = $post["poli"];
        $this->namapasien = $post["namapasien"];
        $this->umur = $post["umur"];
        $this->alamat = $post["alamat"];
        $this->nopasien = $post["nopasien"];
        $this->diagnosa = $post["diagnosa"];
        $this->tgl_pembuatan = $post["tgl_pembuatan"];
        return $this->db->update($this->_table, $this, array('id_rujukan' => $post['id_rujukan']));
    }

    public function delete($id)
    {
        return $this->db->delete($this->_table, array("id_rujukan" => $id));
    }

    public function updateStatusRujuk($id, $status)
    {

        $this->db->set('status', $status);
        $this->db->where('id_rujukan', $id);
        $result = $this->db->update($this->_table);
        return $result;
    }
    public function get_by_role_pencatatanMedis()
    {
        $this->db->select('pencatatan.*, regisanak.nama_anak');
        $this->db->from('pencatatan');
        $this->db->join('regisanak', 'pencatatan.no_pasien = regisanak.no_pasien');
        $query = $this->db->get();
        return $query->result();
        // return $this->db->query("CALL getPencatatan_RegisAnak(".$this->session->user_logged['wilayah'].")")->result();
    }
    // public function getDataCatatAnak($id_catat)
    // {
    //     $this->db->select('pencatatan.*, regisanak.*');
    //     $this->db->from('regisanak');
    //     $this->db->join('pencatatan', 'pencatatan.no_pasien = regisanak.no_pasien');
    //     $this->db->where("pencatatan.id_pencatatan", $id_catat);
    //     // $this->db->where("regisanak.status", 0);
    //     $query = $this->db->get();
    //     return $query->row_array();
    // }

    

}