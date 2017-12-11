class CreateMusics < ActiveRecord::Migration[5.1]
  def change
    create_table :musics do |t|
      t.string :Nama_Band
      t.string :Asal
      t.integer :Jumlah_Personil
      t.string :Nama_Manager
      t.string :Genre
      t.datetime :Jadwal_Tampil

      t.timestamps
    end
  end
end
