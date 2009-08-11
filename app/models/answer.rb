class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :question
  belongs_to :gem
  
  acts_as_voteable
  acts_as_commentable
end
