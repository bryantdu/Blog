class User < ActiveRecord::Base
  attr_accessible :name, :password
  has_many :posts, :dependent => :destroy
end
