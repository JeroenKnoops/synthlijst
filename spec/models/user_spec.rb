require File.dirname(__FILE__) + '/../spec_helper'

describe User do
  it "should be valid" do
    user = Factory.build(:user)
    user.should be_valid
  end

  it "should not be valid" do
    User.new.should_not be_valid
  end
end
