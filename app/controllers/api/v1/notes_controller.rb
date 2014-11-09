class Api::V1::NotesController < ApplicationController
  def show
    @note = Note.find(params[:id])
  end

  def create
    @note = Note.new(note_params)

    if @note.save
      render
    end
  end

  private

  def note_params
    { 
      user_id: user.id,
      devicetoken: user.devicetoken,
      lat: params[:lat],
      lon: params[:lon],
      note_text: params[:note_text],
      photo_uri: params[:photo_uri],
      expiration: params[:expiration]
    }
  end

  def user
    User.find_or_create_by(devicetoken: devicetoken)
  end
  
  def devicetoken
  end
end