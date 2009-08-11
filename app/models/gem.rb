class Gem < ActiveRecord::Base
  belongs_to :user
  acts_as_commentable
end
