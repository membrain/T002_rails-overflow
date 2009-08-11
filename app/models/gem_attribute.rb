class GemAttribute < ActiveRecord::Base
  ATTRIBUTE_NAMES = %w( url )
  
  belongs_to :overflow_gem
  belongs_to :user
  
  acts_as_voteable
  
  validates_presence_of :name
  validates_inclusion_of :name, :in => ATTRIBUTE_NAMES
  
  validates_presence_of :value

end
