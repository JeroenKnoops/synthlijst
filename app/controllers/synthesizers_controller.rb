class SynthesizersController < ApplicationController

  def index
    @synthesizers = Synthesizer.all
  end

  def new
    @synthesizer = Synthesizer.new
  end
  
  def create
    @synthesizer = Synthesizer.create!(params[:synthesizer])
    flash[:notice] = "Nieuwe synthesizer aangemaakt"
    redirect_to synthesizers_path
  end
end
