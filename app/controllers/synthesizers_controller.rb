class SynthesizersController < ApplicationController

  def index
    @synthesizers = Synthesizer.all
  end

  def new
    @synthesizer = Synthesizer.new
  end
  
  def create
    @synthesizer = Synthesizer.new(params[:synthesizer])
    if @synthesizer.save
      flash[:notice] = "Nieuwe synthesizer aangemaakt"
      redirect_to synthesizers_path
    else
      render :action => :new
    end
  end
  
  def show
    @synthesizer = Synthesizer.find(params[:id])
  end
end
