<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
  <h1 class="h2">Kasir</h1>
  <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#tambahdata">
    Tambah Data
  </button>
</div>

<article class="my-3" id="tables">

  <div>
    <div class="bd-example">
      <table class="table table-striped">
        <thead>
          <tr>
            <th scope="col">Username Kasir</th>
            <th scope="col">Nama Kasir</th>
            <th scope="col">Alamat Kasir</th>
            <th scope="col">No Telepon Kasir</th>
            <th scope="col">Opsi</th>
          </tr>
        </thead>
        <tbody>
          <?php foreach( $getPetugas->result() as $res ){ ?>
          <tr>
            <td>
              <?php echo $res->username; ?>
            </td>
            <td>
            <?php echo $res->nama; ?>
            </td>
            <td>
            <?php echo $res->alamat; ?>
            </td>
            <td>
            <?php echo $res->no_tlp; ?>
            </td>
            </td>
            <td>
              <button type="button" class="btn btn-warning" data-bs-toggle="modal"
                data-bs-target="#editdata<?php echo $res->id_user;?>">
                &nbsp; Update
              </button></br>
              <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                data-bs-target="#hapusdata<?php echo $res->id_user;?>">
                &nbsp; Delete
              </button>
            </td>
          </tr>

          <div class="modal fade" id="hapusdata<?php echo $res->id_user; ?>" tabindex="-1"
            aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">Hapus Data</h5>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">

                  <p>Apakah anda yakin ingin menghapus data kasir <b>
                      <?php echo $res->nama ?>
                    </b> ?</p>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Tutup</button>
                  <a class="btn btn-danger btn-rounded"
                    href="<?php echo base_url('petugas/hapusPetugas/'. $res->id_user) ?>">Hapus Data!!</a>
                </div>
              </div>
            </div>
          </div>

          <?php echo form_open_multipart('petugas/editPetugas');?>
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
        </tbody>
      </table>
    </div>

  </div>
  <?php echo form_open_multipart('petugas/simpanPetugas');?>
  <div class="modal fade" id="tambahdata" tabindex="-1" aria-labelledby="exampleModalCenteredScrollableTitle"
    aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalCenteredScrollableTitle">Simpan Data</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <div class="mb-3">
            <label for="petugas" class="form-label">Username</label>
            <input type="text" class="form-control" id="petugas" name="username">
          </div>
          <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" class="form-control" id="password" name="password">
          </div>
          <div class="mb-3">
            <label for="nama" class="form-label">Nama Kasir</label>
            <input type="text" class="form-control" id="nama" name="nama">
          </div>
          <div class="mb-3">
                  <label for="alamat" class="form-label">Alamat Kasir</label>
                  <input type="text" class="form-control" id="alamat" name="alamat">
                  </div>
                  <div class="mb-3">
                  <label for="no_tlp" class="form-label">Nomor Telepon Kasir</label>
                  <input type="number" class="form-control" id="no_tlp" name="no_tlp">
                  </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Tutup</button>
          <button class="btn btn-primary">Simpan Data</button>
        </div>
      </div>
    </div>
  </div>
  <?php echo form_close()?>

</article>