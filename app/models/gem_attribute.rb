class GemAttribute < ActiveRecord::Base
  belongs_to :gem
  belongs_to :user
end
