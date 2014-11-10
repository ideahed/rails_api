class Api::V1::Notes::NearestsController < ApiController
  def index
    @notes = Note.near(
      [params[:lat], params[:lon]],
      params[:radius],
      units: :km
    )
  end
end