require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Synthesizer do
  before(:each) do
    @valid_attributes = {
      :title => "value for title",
      :description => "value for description"
    }
  end

  it "should create a new instance given valid attributes" do
    Synthesizer.create!(@valid_attributes)
  end
  
  it "should not create a new instance since title is not given" do
    Synthesizer.create(:description => "a nameless synthesizer").save.should be_false
  end
end
