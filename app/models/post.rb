class Post < ActiveRecord::Base
  attr_accessible :content, :name, :title
  
  validate :name, :presence => true
  validate :title, :presence => true,
                   :length => {:minimum => 4}

  has_many :comments, :dependent => :destroy
  belongs_to :users
end
