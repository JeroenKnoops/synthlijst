require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Synthesizer do
  # before(:each) do
  #   @valid_attributes = {
  #     :title => "value for title",
  #     :description => "value for description"
  #   }
  # end

  it "should test synthesizer factory" do
    synthesizer = Factory.build(:synthesizer)
    synthesizer.should be_valid
  end
  
  it "should not be valid without title" do
    synthesizer = Factory.build(:synthesizer, {:title => nil})
    synthesizer.should_not be_valid
  end
end
