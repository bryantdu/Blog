class Comment < ActiveRecord::Base
  belongs_to :post
  attr_accessible :body, :commenter
    
  validate :commenter, :presence => true
  validate :body, :length => { :minimum => 10 }
end
