require 'test_helper'

class MusicEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @music_event = music_events(:one)
  end

  test "should get index" do
    get music_events_url
    assert_response :success
  end

  test "should get new" do
    get new_music_event_url
    assert_response :success
  end

  test "should create music_event" do
    assert_difference('MusicEvent.count') do
      post music_events_url, params: { music_event: { Asal: @music_event.Asal, Genre: @music_event.Genre, Jadwal_Tampil: @music_event.Jadwal_Tampil, Jumlah_Personil: @music_event.Jumlah_Personil, Nama_Band: @music_event.Nama_Band, Nama_Manager: @music_event.Nama_Manager } }
    end

    assert_redirected_to music_event_url(MusicEvent.last)
  end

  test "should show music_event" do
    get music_event_url(@music_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_music_event_url(@music_event)
    assert_response :success
  end

  test "should update music_event" do
    patch music_event_url(@music_event), params: { music_event: { Asal: @music_event.Asal, Genre: @music_event.Genre, Jadwal_Tampil: @music_event.Jadwal_Tampil, Jumlah_Personil: @music_event.Jumlah_Personil, Nama_Band: @music_event.Nama_Band, Nama_Manager: @music_event.Nama_Manager } }
    assert_redirected_to music_event_url(@music_event)
  end

  test "should destroy music_event" do
    assert_difference('MusicEvent.count', -1) do
      delete music_event_url(@music_event)
    end

    assert_redirected_to music_events_url
  end
end
