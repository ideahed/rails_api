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
    # binding.pry
    post '/v1/notes', {

      user_id: user.id,
      lat: 5.5,
      lon: 3.3,
      note_text: 'MyString',
      photo_uri: 'MyString',
      expiration: date,
    }.to_json, {'Content-Type' => 'application/json' }
    
    note = Note.last
    expect(response_json).to eq({ 'id' => note.id })
    expect(note.lat).to eq (5.5)
    expect(note.lon).to eq(3.3)
    expect(note.note_text).to eq('MyString')
    expect(note.photo_uri).to eq('MyString')
    expect(note.expiration.to_i).to eq date.to_i

  end
end

describe 'POST /v1/notes' do

 it 'returns an error message when invalid' do
    post '/v1/notes',
      {}.to_json,
      { 'Content-Type' => 'application/json' }

    expect(response_json).to eq({
      'message' => 'Validation Failed',
      'errors' => [
        "User can't be blank",
        "Lat can't be blank",
        "Lon can't be blank",
        "Note text can't be blank",
        "Expiration can't be blank"
      ]
    })
    expect(response.code.to_i).to eq 422
  end
end