require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  fixtures :questions
  
  def test_question_should_have_non_empty_title
    a = questions(:two)
    assert a.save
    
    a.title = ""
    assert !a.save
  end
  
  def test_question_should_have_non_empty_body
    a = questions(:two)
    assert a.save
    
    a.body = ""
    assert !a.save    
  end
end
