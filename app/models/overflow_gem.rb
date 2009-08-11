class OverflowGem < ActiveRecord::Base
  belongs_to :user
  acts_as_commentable
 
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_format_of :name, :with => /^\S+$/
end
