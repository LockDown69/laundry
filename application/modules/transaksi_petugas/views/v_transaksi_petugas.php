<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
  <h1 class="h2">Entry Transaksi</h1>
  <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#tambahdata">
    Tambah Data
  </button>
</div>

<link href="cheatsheet.css" rel="stylesheet">

<article class="my-3" id="tables">

  <div>
    <div class="bd-example">
      <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">Nama Kasir</th>
            <th scope="col">Nama Paket</th>
            <th scope="col">Nama Pemesan</th>
            <th scope="col">Jumlah /kg</th>
            <th scope="col">Jumlah Bayar</th>
            <th scope="col">Tanggal Pesan</th>
            <th scope="col">Keterangan</th>
            <th scope="col">Opsi</th>
          </tr>
        </thead>
        <tbody>
          <?php foreach( $joinTransaksi->result() as $res ){ ?>
          <tr>
            <td>
              <?php echo $res->nama; ?>
            </td>
            <td>
              <?php echo $res->nama_paket; ?>
            </td>
            <td>
              <?php echo $res->nama_pemesan; ?>
            </td>
            <td>
              <?php echo $res->jumlah_kg; ?>
            </td>
            <td>
            Rp  <?php echo number_format($res->jumlah_bayar,2,',','.'); ?>
            </td>
            <td>
              <?php echo $res->tanggal; ?>
            </td>
            <td>
              <?php echo $res->keterangan; ?>
            </td>
            <td>
              <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                data-bs-target="#hapusdata<?php echo $res->id_transaksi;?>">
                &nbsp; Delete
              </button>
              <button type="button" class="btn btn-success" data-bs-toggle="modal"
                data-bs-target="#laporan<?php echo $res->id_transaksi;?>">
                &nbsp; Laporan
              </button>
            </td>
          </tr>

          <div class="modal fade" id="hapusdata<?php echo $res->id_transaksi; ?>" tabindex="-1"
            aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">Hapus Data</h5>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">

                  <p>Apakah anda yakin ingin menghapus data transaksi <b>
                      <?php echo $res->nama_pemesan ?>
                    </b> ?</p>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                  <a class="btn btn-danger btn-rounded"
                    href="<?php echo base_url('transaksi_petugas/hapusTransaksi/'. $res->id_transaksi) ?>">Hapus Data!!</a>
                </div>
              </div>
            </div>
          </div>
          <?php echo form_open_multipart('transaksi_petugas/simpanLaporan');?>
  <div class="modal fade" id="laporan<?php echo $res->id_transaksi;?>" tabindex="-1" aria-labelledby="exampleModalCenteredScrollableTitle"
    aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalCenteredScrollableTitle">Modal Tambah</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <div class="mb-3">
            <!-- <label for="nama_pemesan" class="form-label">Nama Pemesan</label> -->
            <input type="text" class="form-control" hidden id="nama_pemesan" name="nama_pemesan" value="<?php echo $res->nama_pemesan; ?>">
          </div>
          <div class="mb-3">
            <!-- <label for="jumlah_kg" class="form-label">Jumlah /kg</label> -->
            <input type="number" class="form-control" hidden id="jumlah_kg" name="jumlah_kg" value="<?php echo $res->jumlah_kg; ?>">
          </div>
          <div class="mb-3">
            <!-- <label for="jumlah_bayar" class="form-label">Jumlah Bayar</label> -->
            <input type="number" class="form-control" hidden id="jumlah_bayar" name="jumlah_bayar" value="<?php echo $res->jumlah_bayar; ?>">
          </div>
          <div class="mb-3">
            <label for="tanggal_kembali" class="form-label">Tanggal Diambil</label>
            <input type="date" class="form-control" id="tanggal_kembali" name="tanggal_kembali">
          </div>
          <div class="mb-3">
            <label for="tanggal_dibayar" class="form-label">Tanggal Dibayar</label>
            <input type="date" class="form-control" id="tanggal_dibayar" name="tanggal_dibayar">
          </div>
                  <div class="input-group">
          <!-- <span class="input-group-text">Keterangan</span> -->
          <textarea class="form-control" hidden aria-label="With textarea" name="keterangan"><?php echo $res->keterangan; ?></textarea>
        </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
          <button class="btn btn-primary">Save changes</button>
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
  <?php echo form_open_multipart('transaksi_petugas/simpanTransaksi');?>
  <div class="modal fade" id="tambahdata" tabindex="-1" aria-labelledby="exampleModalCenteredScrollableTitle"
    aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalCenteredScrollableTitle">Modal Tambah</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
        <div class="mb-3">
            <label for="id_user" class="form-label">Nama Kasir</label>
            <select id="id_user" name="id_user" class="form-select">
            <?php foreach ($getUser ->result() as $user){?>
                <option value="<?php echo $user->id_user;?>">
                  <?php echo $user->nama; ?>
                </option>
                <?php
              }
              ?>
              </select>
          </div>
          <div class="mb-3">
            <label for="id_paket" class="form-label">Nama Paket</label>
            <select id="id_paket" name="id_paket" class="form-select">
            <?php foreach ($getPaket ->result() as $paket){?>
                <option value="<?php echo $paket->id_paket;?>">
                  <?php echo $paket->nama_paket; ?>
                </option>
                <?php
              }
              ?>
              </select>
          </div>
          <div class="mb-3">
            <label for="nama_pemesan" class="form-label">Nama Pemesan</label>
            <input type="text" class="form-control" id="nama_pemesan" name="nama_pemesan">
          </div>
          <div class="mb-3">
            <label for="jumlah_kg" class="form-label">Jumlah /kg</label>
            <input type="number" class="form-control" id="jumlah_kg" name="jumlah_kg">
          </div>
          <div class="mb-3">
            <label for="jumlah_bayar" class="form-label">Jumlah Bayar</label>
            <input type="number" class="form-control" id="jumlah_bayar" name="jumlah_bayar">
          </div>
                  <div class="input-group">
          <span class="input-group-text">Keterangan</span>
          <textarea class="form-control" aria-label="With textarea" name="keterangan"></textarea>
        </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
          <button class="btn btn-primary">Save changes</button>
        </div>
      </div>
    </div>
  </div>
  <?php echo form_close()?>

</article>