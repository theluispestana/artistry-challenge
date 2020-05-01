class ArtistInstrumentsController < ApplicationController
  def new
    @artist_instrument = ArtistInstrument.new
  end

  def create
    @artist_instrument = ArtistInstrument.create(artist_intrument_params)

    if @artist_instrument.valid?
      @artist = Artist.find(@artist_instrument.artist_id)
      redirect_to artist_path(@artist)
    else
      redirect_to new_artist_instrument_path()
    end
  end

  private

  def artist_intrument_params
    params.require(:artist_instrument).permit(:artist_id, :instrument_id)
  end
end
