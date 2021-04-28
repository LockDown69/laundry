<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
  <h1 class="h2">Profile Admin</h1>
</div>

<article class="my-3" id="tables">

  <div>
    <div class="bd-example">
    <?php foreach( $getProfile->result() as $res ){ ?>
    <div class="mb-3">
    <label>Username</label>
          <input class="form-control form-control-lg" readonly type="text" value="<?php echo $res->username;?>">
        </div>
        <div class="mb-3">
        <label>Nama</label>
          <input class="form-control form-control-lg" readonly type="text" value="<?php echo $res->nama;?>">
        </div>
        <div class="mb-3">
        <label>Alamat</label>
          <input class="form-control form-control-lg" readonly type="text" value="<?php echo $res->alamat;?>">
        </div>
        <div class="mb-3">
        <label>No Telepon</label>
          <input class="form-control form-control-lg" readonly type="text" value="<?php echo $res->no_tlp;?>">
        </div>

        <button type="button" class="btn btn-warning" data-bs-toggle="modal"
                data-bs-target="#editdata<?php echo $res->id_user;?>">
                Update
              </button></br>


         <?php echo form_open_multipart('profile/editProfile');?>
          <div class="modal fade" id="editdata<?php echo $res->id_user;?>" tabindex="-1"
            aria-labelledby="exampleModalCenteredScrollableTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalCenteredScrollableTitle">Edit Data</h5>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">

                  <input type="hidden" name="id" value="<?php echo $res->id_user; ?>" />
                  <div class="mb-3">
            <label for="username" class="form-label">Username</label>
            <input type="text" class="form-control" id="username" name="username" value="<?php echo $res->username;?>">
          </div>

                  <div class="mb-3">
                  <label for="nama" class="form-label">Nama Kasir</label>
                  <input type="text" class="form-control" id="nama" name="nama"
                      value="<?php echo $res->nama;?>">
                  </div>
                  <div class="mb-3">
                  <label for="alamat" class="form-label">Alamat Kasir</label>
                  <input type="text" class="form-control" id="alamat" name="alamat"
                      value="<?php echo $res->alamat;?>">
                  </div>
                  <div class="mb-3">
                  <label for="no_tlp" class="form-label">Nomor Telepon Kasir</label>
                  <input type="number" class="form-control" id="no_tlp" name="no_tlp"
                      value="<?php echo $res->no_tlp;?>">
                  </div>
                  
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Tutup</button>
                  <button class="btn btn-primary">Edit Data</button>
                </div>
              </div>
            </div>
          </div>
          <?php echo form_close()?>
<?php } ?>
    </div>

  </div>


</article>