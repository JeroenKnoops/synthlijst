class User < ActiveRecord::Base
  acts_as_authentic
  
  attr_accessor :admin

  def admin?
    admin
  end
end
