class SynthesizersController < ApplicationController

  def index
    @synthesizers = Synthesizer.all
  end

end
