<div class="container-fluid">
    <?php $this->load->view('admin/_partials/breadcrumb');?>

    <?php if ($this->session->flashdata('success')){ ?>
    <div class="alert alert-success" role="alert">
        <?php echo $this->session->flashdata('success'); ?>
    </div>
    <?php }else if ($this->session->flashdata('error')){ ?>
    <div class="alert alert-danger" role="alert">
        <?php echo $this->session->flashdata('error'); ?>
    </div>
    <?php }?>

    <!-- DataTables -->
    <div class="card mb-3">
        <div class="card-header">
            <div class="row">
                <div class="col-md-8">
                    <a href="<?php echo site_url('posyandu/Pencatatan') ?>"><i class="fas fa-arrow-left"></i>Back</a>
                </div>
                <div class="col-md-4 pull-right">
                    <h4><b>Detail Pencatatan</b></h4>
                </div>
            </div>

            <div class="card-body">
                <br>
                <br>
                <center>
                    <table width="50%" class="table" height="50% ">
                        <thead>
                            <!-- <tr>
                                <td>ID Pencatatan</td>
                                <td>:</td>
                                <td><?php echo $pencatatan->id_pencatatan ?></td>
                            </tr> -->
                            <tr>
                                <td>Nomor Pasien</td>
                                <td>:</td>
                                <td><?php echo $pencatatan->no_pasien ?></td>
                            </tr>
                            <!-- <tr>
                                <td>ID Petugas</td>
                                <td>:</td>
                                <td><?php echo $pencatatan->id_petugas ?></td>
                            </tr> -->
                            <!-- <tr>
                                <td>ID Wilayah</td>
                                <td>:</td>
                                <td><?php echo $pencatatan->idWilayah ?></td>
                            </tr> -->
                            <tr>
                                <td>Nama Bidan</td>
                                <td>:</td>
                                <td><?php echo $pencatatan->nama_bidan ?></td>
                            </tr>
                            <tr>
                                <td>Umur</td>
                                <td>:</td>
                                <td><?php echo $pencatatan->umur ?></td>
                            </tr>
                            <tr>
                                <td>Kategori Usia</td>
                                <td>:</td>
                                <td><?php echo $pencatatan->kategori ?></td>
                            </tr>
                            <tr>
                                <td>Tinggi Badan</td>
                                <td>:</td>
                                <td><?php echo $pencatatan->tinggi ?></td>
                            </tr>
                            <tr>
                                <td>Berat Badan</td>
                                <td>:</td>
                                <td><?php echo $pencatatan->bb ?></td>
                            </tr>
                            <tr>
                                <td>Temperatur</td>
                                <td>:</td>
                                <td><?php echo $pencatatan->temperatur ?></td>
                            </tr>
                            <tr>
                                <td>Lingkar Kepala</td>
                                <td>:</td>
                                <td><?php echo $pencatatan->lingkar ?></td>
                            </tr>
                            <tr>
                                <td>Jenis Imunisasi</td>
                                <td>:</td>
                                <td><?php echo $pencatatan->jenis_imunisasi ?></td>
                            </tr>
                            <tr>
                                <td>Diagnosa</td>
                                <td>:</td>
                                <td><?php echo $pencatatan->diagnosa ?></td>
                            </tr>
                            <tr>
                                <td>Penyuluhan</td>
                                <td>:</td>
                                <td><?php echo $pencatatan->penyuluhan ?></td>
                            </tr>
                            <tr>
                                <td>Vitamin</td>
                                <td>:</td>
                                <td><?php echo $pencatatan->vitamin ?></td>
                            </tr>
                            <tr>
                                <td>Obat Cacing</td>
                                <td>:</td>
                                <td><?php echo $pencatatan->obat ?></td>
                            </tr>
                            <tr>
                                <td>Nomor Telepon</td>
                                <td>:</td>
                                <td><?php echo $pencatatan->notelp ?></td>
                            </tr>
                           
                            <tr>
                                <td>Tanggal Pencatatan</td>
                                <td>:</td>
                                <td><?php echo $pencatatan->tgl_pencatatan?></td>
                            </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                </center>
            </div>
        </div> <!-- /.card -->
    </div>