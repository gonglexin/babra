class User < ActiveRecord::Base
  has_secure_password
  attr_accessor :current_password
end
