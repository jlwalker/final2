class Micropost < ActiveRecord::Base
  
  attr_accessible :content
  belongs_to :user
  
  validates :content, :presence => true,
                      :length => { :maximum => 150}
  
  validates :user_id, :presence => true
                      
  default_scope :order => 'microposts.created_at DESC'
  
  self.per_page = 10

end
