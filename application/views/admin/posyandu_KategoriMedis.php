<div class="app-main__outer">
    <div class="app-main__inner">
        <div class="app-page-title">
            <div class="page-title-wrapper">
                <div class="page-title-heading">
                    <div class="page-title-icon">
                        <i class="pe-7s-info icon-gradient bg-mean-fruit"></i>
                    </div>
                    <div>Kelola Kategori</div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="main-card mb-3 card">
                    <div class="card-body">
                        <h5>Kategori Usia</h5>
                        <a href="#" class="mb-2 mr-2 btn btn-success" data-toggle="modal" data-target=".addKategoriUsia">Tambah Kategori</a>
                        <table class="mb-0 table" id="addKategoriUsia">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Kataegori Usia</th>
                                    <th>Aksi</th>
                                     </tr>
                            </thead>
                            <tbody>
                                <?php $no = 0;
                                    foreach ($kategoriUsia as $key => $value) {
                                    $no++;?>
                                    <tr>
                                        <td><?=$no;?></td>
                                        <td><?=$value['usia'];?></td>
                                        <td>
                                        <a href="#" class="mb-2 mr-1 btn btn-warning" id="editKategoriUsia" data-toggle="modal" data-target="#editKategoriUsia<?=$value['id_usia']?>">Edit</a>
                                            <a href="<?=base_url('admin/posyandu/hapusKategori/kategoriUsia/') . $value['id_usia'];?>" class="mb-2 mr-1 btn btn-danger">Delete</a>
                                        </td>
                                    </tr>
                                <?php }?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="main-card mb-3 card">
                    <div class="card-body">
                        <h5>Imunisasi</h5>
                        <a href="#" class="mb-2 mr-2 btn btn-success" data-toggle="modal"
                            data-target=".addImunisasi">Tambah Kategori</a>
                        <table class="mb-0 table" id="addimun">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Jenis Imunisasi</th>
                                    <th>Aksi</th>
                                    </tr>
                            </thead>
                            <tbody>
                                <?php $no = 0;
                                    foreach ($imunisasi as $key => $value) {
                                    $no++;?>
                                    <tr>
                                        <td><?=$no;?></td>
                                        <td><?=$value['imunisasi'];?></td>
                                        <td>
                                            <a href="#" class="mb-2 mr-1 btn btn-warning editImunisasi" data-toggle="modal" data-target="#editKategoriImunisasi<?=$value['id_imunisasi']?>">Edit</a>
                                            <a href="<?=base_url('admin/posyandu/hapusKategori/imunisasi/') . $value['id_imunisasi'];?>" class="mb-2 mr-1 btn btn-danger">Delete</a>
                                        </td>
                                    </tr>
                                <?php }?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="main-card mb-3 card">
                    <div class="card-body">
                        <h5>Vitamin</h5>
                        <a href="#" class="mb-2 mr-2 btn btn-success" data-toggle="modal"
                            data-target=".addVitamin">Tambah Kategori</a>
                        <table class="mb-0 table" id="addvit">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Vitamin</th>
                                    <th>Aksi</th>
                                    </tr>
                            </thead>
                            <tbody>
                                <?php $no = 0;
                                    foreach ($vitamin as $key => $value) {
                                    $no++;?>
                                    <tr>
                                        <td><?=$no;?></td>
                                        <td><?=$value['vitamin'];?></td>
                                        <td>
                                            <a href="#" class="mb-2 mr-1 btn btn-warning editVitamin" data-toggle="modal" data-target="#editKategoriVitamin<?=$value['id_vitamin']?>">Edit</a>
                                            <a href="<?=base_url('admin/posyandu/hapusKategori/vitamin/') . $value['id_vitamin'];?>" class="mb-2 mr-1 btn btn-danger">Delete</a>
                                        </td>
                                    </tr>
                                <?php }?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="main-card mb-3 card">
                    <div class="card-body">
                        <h5>Obat Cacing</h5>
                        <a href="#" class="mb-2 mr-2 btn btn-success" data-toggle="modal"
                            data-target=".addObat">Tambah Kategori</a>
                        <table class="mb-0 table" id="addobat">
                            <thead>
                                <tr>
                                     <th>No</th>
                                    <th>Obat Cacing</th>
                                    <th>Aksi</th>
                                    </tr>
                            </thead>
                            <tbody>
                                <?php $no = 0;
                                    foreach ($obatCacing as $key => $value) {
                                    $no++;?>
                                    <tr>
                                        <td><?=$no;?></td>
                                        <td><?=$value['obatCacing'];?></td>
                                        <td>
                                            <a href="#" class="mb-2 mr-1 btn btn-warning editObat" data-toggle="modal" data-target="#editKategoriObat<?=$value['id_obat']?>">Edit</a>
                                            <a href="<?=base_url('admin/posyandu/hapusKategori/obatCacing/') . $value['id_obat'];?>" class="mb-2 mr-1 btn btn-danger">Delete</a>
                                        </td>
                                    </tr>
                                <?php }?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
</div>

<!-- Kategori Usia MODAL -->
<div class="modal fade addKategoriUsia" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
    aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="jenisModalTitle">Kategori Usia</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <?=form_open_multipart('admin/posyandu/addKategori/kategoriUsia', ['class' => 'modal-form', 'context' => 'addUsiaModal']);?>
            <div class="modal-body">
                <div class="form-group form-input">
                    <div class="row">
                        <div class="col-md-2 text-sm-left">
                            <label for="input-kategoriUsia" class="col-form-label text-dark" >Kategori Usia</label>
                        </div>
                        <div class="col-md-10">
                            <input type="text" required name="kategoriUsia" class="form-control" id="input-kategoriUsia">
                            <div class="invalid-feedback"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Save</button>
            </div>
            <?=form_close();?>
        </div>
    </div>
</div>

<?php foreach ($kategoriUsia as $key => $value): ?>
<div class="modal fade" id="editKategoriUsia<?=$value['id_usia']?>" tabindex="-1" role="dialog"
    aria-labelledby="editUsiaModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="jenisModalTitle">Kategori Usia</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form class="" action="<?=base_url()?>admin/posyandu/editKategori/kategoriUsia" method="post">
            <div class="modal-body" id="ModalBody">
                <div class="form-group form-input">
                    <div class="row">
                        <div class="col-md-2 text-sm-left">
                            <label for="input-kategoriUsia" class="col-form-label text-dark">Kategori Usia</label>
                        </div>
                        <div class="col-md-10">
                            <input type="hidden" name="idusia" value="<?=$value['id_usia']?>">
                            <input type="text" name="kategoriUsia" class="form-control" id="input-kategoriUsia">
                            <div class="invalid-feedback"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Save</button>
            </div>
          </form>
        </div>
    </div>
</div>
<?php endforeach; ?>
<!-- Kategori Imunisasi MODAL -->
<div class="modal fade addImunisasi" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
    aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="jenisModalTitle">Jenis Imunisasi</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <?=form_open_multipart('admin/posyandu/addKategori/imunisasi', ['class' => 'modal-form', 'context' => 'addImunisasiModal']);?>
            <div class="modal-body">
                <div class="form-group form-input">
                    <div class="row">
                        <div class="col-md-2 text-sm-left">
                            <label for="input-imunisasi" class="col-form-label text-dark">Jenis Imunisasi</label>
                        </div>
                        <div class="col-md-10">
                            <input type="text" required name="imunisasi" class="form-control" id="input-imunisasi">
                            <div class="invalid-feedback"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Save</button>
            </div>
            <?=form_close();?>
        </div>
    </div>
</div>

<!-- Kategori Obat Cacing MODAL -->
<div class="modal fade addVitamin" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
    aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="jenisModalTitle">Vitamin</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <?=form_open_multipart('admin/posyandu/addKategori/vitamin', ['class' => 'modal-form', 'context' => 'addVitaminModal']);?>
            <div class="modal-body">
                <div class="form-group form-input">
                    <div class="row">
                        <div class="col-md-2 text-sm-left">
                            <label for="input-vitamin" class="col-form-label text-dark">Vitamin</label>
                        </div>
                        <div class="col-md-10">
                            <input type="text" required name="vitamin" class="form-control" id="input-vitamin">
                            <div class="invalid-feedback"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Save</button>
            </div>
            <?=form_close();?>
        </div>
    </div>
</div>
<!-- Kategori Vitamin MODAL -->
<div class="modal fade addObat" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
    aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="jenisModalTitle">Obat Cacing</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <?=form_open_multipart('admin/posyandu/addKategori/obatCacing', ['class' => 'modal-form', 'context' => 'addObatModal']);?>
            <div class="modal-body">
                <div class="form-group form-input">
                    <div class="row">
                        <div class="col-md-2 text-sm-left">
                            <label for="input-obatCacing" class="col-form-label text-dark">Obat Cacing</label>
                        </div>
                        <div class="col-md-10">
                            <input type="text" required name="obatCacing" class="form-control" id="input-obatCacing">
                            <div class="invalid-feedback"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Save</button>
            </div>
            <?=form_close();?>
        </div>
    </div>
</div>

<?php foreach ($imunisasi as $key => $value): ?>
<div class="modal fade" id="editKategoriImunisasi<?=$value['id_imunisasi']?>" tabindex="-1" role="dialog"
    aria-labelledby="editUsiaModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="jenisModalTitle">Kategori Imunisasi</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form class="" action="<?=base_url()?>admin/posyandu/editKategori/imunisasi" method="post">
            <div class="modal-body" id="ModalBody">
                <div class="form-group form-input">
                    <div class="row">
                        <div class="col-md-2 text-sm-left">
                            <label for="input-kategoriUsia" class="col-form-label text-dark">Kategori Imunisasi</label>
                        </div>
                        <div class="col-md-10">
                            <input type="hidden" name="idimunisasi" value="<?=$value['id_imunisasi']?>">
                            <input type="text" name="jenisImunisasi" class="form-control" id="input-kategoriUsia">
                            <div class="invalid-feedback"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Save</button>
            </div>
          </form>
        </div>
    </div>
</div>
<?php endforeach; ?>

<?php foreach ($vitamin as $key => $value): ?>
<div class="modal fade" id="editKategoriVitamin<?=$value['id_vitamin']?>" tabindex="-1" role="dialog"
    aria-labelledby="editUsiaModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="jenisModalTitle">Kategori Vitamin</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form class="" action="<?=base_url()?>admin/posyandu/editKategori/vitamin" method="post">
            <div class="modal-body" id="ModalBody">
                <div class="form-group form-input">
                    <div class="row">
                        <div class="col-md-2 text-sm-left">
                            <label for="input-kategoriUsia" class="col-form-label text-dark">Kategori Vitamin</label>
                        </div>
                        <div class="col-md-10">
                            <input type="hidden" name="idvitamin" value="<?=$value['id_vitamin']?>">
                            <input type="text" name="vitamin" class="form-control" id="input-kategoriUsia">
                            <div class="invalid-feedback"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Save</button>
            </div>
          </form>
        </div>
    </div>
</div>
<?php endforeach; ?>

<?php foreach ($obatCacing as $key => $value): ?>
<div class="modal fade" id="editKategoriObat<?=$value['id_obat']?>" tabindex="-1" role="dialog"
    aria-labelledby="editUsiaModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="jenisModalTitle">Kategori Obat Cacing</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form class="" action="<?=base_url()?>admin/posyandu/editKategori/obatCacing" method="post">
            <div class="modal-body" id="ModalBody">
                <div class="form-group form-input">
                    <div class="row">
                        <div class="col-md-2 text-sm-left">
                            <label for="input-kategoriUsia" class="col-form-label text-dark">Kategori Obat Cacing</label>
                        </div>
                        <div class="col-md-10">
                            <input type="hidden" name="idobatcacing" value="<?=$value['id_obat']?>">
                            <input type="text" name="namaobatcacing" class="form-control" id="input-kategoriUsia">
                            <div class="invalid-feedback"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Save</button>
            </div>
          </form>
        </div>
    </div>
</div>
<?php endforeach; ?>
