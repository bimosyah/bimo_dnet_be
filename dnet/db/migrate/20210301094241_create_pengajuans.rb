class CreatePengajuans < ActiveRecord::Migration[6.1]
  def change
    create_table :pengajuans do |t|
      t.string "nama_pegawai"
      t.string "nama_pengajuan"
      t.string "status_pengajuan"
      t.timestamps
    end
  end
end
