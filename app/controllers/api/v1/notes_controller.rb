class Api::V1::NotesController < ApplicationController
  def show
    @note = Note.find(params[:id])
  end

  def create
    @note = Note.new(note_params)
    if @note.save
      render
    else
      render json: {
        message: 'Validation Failed',
        errors: @note.errors.full_messages
      }, status: 422
    end
  end

  private

  def note_params
    { 
      user_id: user.id,
      lat: params[:lat],
      lon: params[:lon],
      note_text: params[:note_text],
      photo_uri: params[:photo_uri],
      expiration: params[:expiration]
    }
  end

  def user
   user = User.find_or_create_by(id: params[:user_id])
  end
  
end