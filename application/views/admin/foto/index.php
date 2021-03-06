<?php if ($this->session->flashdata('message')) : ?>
<div class="alert alert-block alert-success">
    <button type="button" class="close" data-dismiss="alert">
        <i class="icon-remove"></i>
    </button>
    <strong class="green">
        <?php
        $msg = $this->session->flashdata('message');
        echo $msg == '' ? '' : '<p id="message">' . $msg . '</p>';
        ?>  
    </strong>
</div>
<?php endif; ?>
<table id="sample-table-1" class="table table-striped table-bordered table-hover">
    <thead>
        <tr>
            <th class="center">No</th>
            <th>Foto</th>
            <th>Nama foto</th>
            <th><a href="<?php echo base_url('admin/dashboard/tambah_foto'); ?>"><button class="btn btn-success btn-small">Tambah foto</button></a></th>
        </tr>
    </thead>
    <tbody>
        <?php
        $no = 1;
        foreach ($foto as $key => $row) :
            ?>
            <tr>
                <td class="center"><?php echo $no; ?></td>
                <td><img src="<?php echo base_url('./foto/' .$row->foto); ?>" width="45px" height="50px"></td>
                <td><?php echo $row->nama_foto; ?></td>
                <td><a onclick="return confirm('Anda yakin akan menghapus data ini?')" href="<?php echo base_url('admin/dashboard/hapus_foto/'. $row->id); ?>">
                        <button class="btn btn-mini btn-danger">
                            <i class="icon-trash bigger-120"></i> Delete
                        </button></a>
            </tr>
            <?php
            $no++;
        endforeach;
        ?>
    </tbody>
</table>