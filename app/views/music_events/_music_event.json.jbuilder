json.extract! music_event, :id, :Nama_Band, :Asal, :Jumlah_Personil, :Nama_Manager, :Genre, :Jadwal_Tampil, :created_at, :updated_at
json.url music_event_url(music_event, format: :json)
