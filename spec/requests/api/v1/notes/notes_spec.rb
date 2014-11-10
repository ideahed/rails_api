require 'spec_helper'

describe 'GET /v1/notes/id' do
  it 'returns a note by :id' do 
    note = create(:note)

    get "/v1/notes/#{note.id}"

    expect(response_json).to eq(
      {
        'id' => note.id,
        'user_id' => note.user_id,
        'lat' => note.lat,
        'lon' => note.lon,
        'note_text' => note.note_text,
        'photo_uri' => note.photo_uri,
        'expiration' => note.expiration.as_json
      }
    )
  end 
end

describe 'POST /v1/notes/id' do
  it 'saves the lat, lon, note text, note photo, recipients, and expiration' do
    date = Time.zone.now
    user = create(:user)
    binding.pry
    post '/v1/notes', {

      user_id: user[:id],
      lat: 5.5,
      lon: 3.3,
      photo_uri: 'MyString',
      note_text: 'Hey sweetie! Just thinking about your lovely face!',
      expiration: date,
    }.to_json, {'Content-Type' => 'application/json' }
    
    note = Note.last
    expect(response_json).to eq({ 'id' => note[:id] })
    expect(note.lat).to eq (5.5)
    expect(note.lon).to eq(3.3)
    expect(note_text).to eq('Hey sweetie! Just thinking about your lovely face!')
    expect(note.photo_uri).to eq('http://www.photour/l12345.jpg')
    expect(note.expiration.to_i).to eq date.to_i

  end
end