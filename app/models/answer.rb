class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :question
  belongs_to :gem
end
