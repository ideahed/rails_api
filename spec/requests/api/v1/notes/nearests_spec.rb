describe 'GET /v1/notes/nearests?lat=&lon=&radius=' do
  it 'returns the notes within the given radius' do
    near_note = create(:note, lat: 37.760322, lon: -122.429667)
    lat = 37.771098
    lon = -122.430782
    radius = 10

    get "/v1/notes/nearests?lat=#{lat}&lon=#{lon}&radius=#{radius}"

    expect(response_json).to eq([
      {
        'id' => near_note.id,
        'user_id' => near_note.user_id,
        'lat' => near_note.lat,
        'lon' => near_note.lon,
        'note_text' => near_note.note_text,
        'photo_uri' => near_note.photo_uri,
        'expiration' => near_note.expiration.as_json
      },
    ])
  end
end