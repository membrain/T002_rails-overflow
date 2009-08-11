class GemAttribute < ActiveRecord::Base
  belongs_to :overflow_gem
  belongs_to :user
  acts_as_voteable
end
