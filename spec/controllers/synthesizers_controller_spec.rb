require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe SynthesizersController do

  #Delete these examples and add some real ones
  it "should use SynthesizersController" do
    controller.should be_an_instance_of(SynthesizersController)
  end

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end
  end

  describe "POST 'create'" do
    it "should be successful" do
      Synthesizer.any_instance.stubs(:valid?).returns(true)
      post 'create'
      flash[:notice].should_not be_nil
      response.should redirect_to(synthesizers_path)
    end
    it "should not be successful" do
      Synthesizer.any_instance.stubs(:valid?).returns(false)
      post 'create'
      flash[:notice].should be_nil
      response.should render_template('new')
    end
  end

end
