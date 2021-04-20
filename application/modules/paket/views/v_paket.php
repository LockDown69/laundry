<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
  <h1 class="h2">Paket</h1>
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
            <th scope="col">Nama Paket</th>
            <th scope="col">Harga</th>
            <th scope="col">Opsi</th>
          </tr>
        </thead>
        <tbody>
          <?php foreach( $getPaket->result() as $res ){ ?>
          <tr>
            <td>
              <?php echo $res->nama_paket; ?>
            </td>
            <td>
            Rp. <?php echo number_format($res->harga,2,',','.'); ?>
            </td>
            </td>
            <td>
              <button type="button" class="btn btn-warning" data-bs-toggle="modal"
                data-bs-target="#editdata<?php echo $res->id_paket;?>">
                &nbsp; Update
              </button></br>
              <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                data-bs-target="#hapusdata<?php echo $res->id_paket;?>">
                &nbsp; Delete
              </button>
            </td>
          </tr>

          <div class="modal fade" id="hapusdata<?php echo $res->id_paket; ?>" tabindex="-1"
            aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">Hapus Data</h5>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">

                  <p>Apakah anda yakin ingin menghapus data paket <b>
                      <?php echo $res->nama_paket ?>
                    </b> ?</p>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Tutup</button>
                  <a class="btn btn-danger btn-rounded"
                    href="<?php echo base_url('paket/hapusPaket/'. $res->id_paket) ?>">Hapus Data!!</a>
                </div>
              </div>
            </div>
          </div>

          <?php echo form_open_multipart('paket/editPaket');?>
          <div class="modal fade" id="editdata<?php echo $res->id_paket;?>" tabindex="-1"
            aria-labelledby="exampleModalCenteredScrollableTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalCenteredScrollableTitle">Edit Data</h5>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">

                  <input type="hidden" name="id" value="<?php echo $res->id_paket; ?>" />
                  <div class="mb-3">
            <label for="nama_paket" class="form-label">Nama Paket</label>
            <input type="text" class="form-control" id="nama_paket" name="nama_paket" value="<?php echo $res->nama_paket;?>">>
          </div>
                  <div class="mb-3">
                  <label for="harga" class="form-label">Harga Paket</label>
                  <input type="number" class="form-control" id="harga" name="harga"
                      value="<?php echo $res->harga;?>">
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
  <?php echo form_open_multipart('paket/simpanPaket');?>
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
            <label for="nama_paket" class="form-label">Nama Paket</label>
            <input type="text" class="form-control" id="nama_paket" name="nama_paket">
          </div>
          <div class="mb-3">
            <label for="harga" class="form-label">Harga Paket</label>
            <input type="number" class="form-control" id="harga" name="harga">
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