<div class="form-group row">
    <label for="nama_bidan" class="col-sm-2 col-form-label">Jenis Imunisasi</label>
    <div class="col">
        <select id="inputState" class="form-control" name="jenis_imunisasi">
            <option value="" selected disabled>Pilih jenis Imunisasi</option>
            <?php foreach ($imunisasi2 as $i): ?>
            <option value="<?=$i->imunisasi?>"><?=$i->imunisasi?></option>
            <?php endforeach?>
            <!-- <option value="5 tahun (DT)">5 tahun (DT)</option> -->
        </select>
    </div>
</div>