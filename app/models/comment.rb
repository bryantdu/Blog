class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  attr_accessible :body
    
  validate :commenter, :presence => true
  validate :body, :length => { :minimum => 10 }
end
