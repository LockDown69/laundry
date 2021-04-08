<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
  <h1 class="h2">Laporan</h1>
</div>

<article class="my-3" id="tables">

  <div>
    <div class="bd-example">
      <table class="table table-striped">
        <thead>
          <tr>
            <th scope="col">Nama Pemesan</th>
            <th scope="col">Jumlah /Kg</th>
            <th scope="col">Jumlah Bayar</th>
            <th scope="col">Tanggal Dikirim</th>
            <th scope="col">Tanggal Kembali</th>
            <th scope="col">Tanggal Dibayar</th>
            <th scope="col">Keterangan</th>
            <th scope="col">Opsi</th>
          </tr>
        </thead>
        <tbody>
          <?php foreach( $getLaporan->result() as $res ){ ?>
          <tr>
            <td>
              <?php echo $res->nama_pemesan; ?>
            </td>
            <td>
              <?php echo $res->jumlah_kg; ?>
            </td>
            <td>
            Rp. <?php echo number_format($res->jumlah_bayar,2,',','.'); ?>
            </td>
            <td>
              <?php echo $res->tanggal; ?>
            </td>
            <td>
              <?php echo $res->tanggal_kembali; ?>
            </td>
            <td>
              <?php echo $res->tanggal_dibayar; ?>
            </td>
            <td>
              <?php echo $res->keterangan; ?>
            </td>
            </td>
            <td>
              <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                data-bs-target="#hapusdata<?php echo $res->id_laporan;?>">
              Delete
              </button>
            </td>
          </tr>

          <div class="modal fade" id="hapusdata<?php echo $res->id_laporan; ?>" tabindex="-1"
            aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">Hapus Data/h5>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">

                  <p>Apakah anda yakin ingin menghapus data laporan <b>
                      <?php echo $res->nama_pemesan ?>
                    </b> ?</p>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Tutup</button>
                  <a class="btn btn-danger btn-rounded"
                    href="<?php echo base_url('laporan/hapusLaporan/'. $res->id_laporan) ?>">Hapus Data!!</a>
                </div>
              </div>
            </div>
          </div>
          <?php } ?>
        </tbody>
      </table>
    </div>

  </div>
</article>