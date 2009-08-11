require 'test_helper'

class GemAttributeTest < ActiveSupport::TestCase
  fixtures :gem_attributes
  
  def test_has_name
    ga = gem_attributes(:one)
    ga.name = nil
    assert !ga.save
  end
  
  def test_has_value
    ga = gem_attributes(:one)
    ga.value = nil
    assert !ga.save 
  end

  def test_has_name_in_our_special_list
    ga = gem_attributes(:one)
    ga.name = GemAttribute::ATTRIBUTE_NAMES.first
    assert ga.save
    
    ga.name = "hopefully_not_in_our_list"
    assert !GemAttribute::ATTRIBUTE_NAMES.include?(ga.name)
    assert !ga.save
  end
end
