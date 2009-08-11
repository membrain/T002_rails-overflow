require 'test_helper'

class OverflowGemTest < ActiveSupport::TestCase
  def test_overflow_gem_should_not_save_without_a_name
    g = OverflowGem.new
    assert !g.save
  end

  def test_overflow_gem_name_should_be_unique
    g1 = OverflowGem.new({:name => "pimpin_gem"})
    assert g1.save
    g2 = OverflowGem.new({:name => "pimpin_gem"})
    assert !g2.save
  end

  def test_overflow_gem_name_should_not_have_spaces
    g1 = OverflowGem.new({:name => "gem that has spaces"})
    assert !g1.save
    
    g2 = OverflowGem.new({:name => "gem_that_has_one space"})
    assert !g2.save
  end
  
  def test_overflow_gem_is_commentable
    g = OverflowGem.new({:name => "valid_overflow_gem_name"})
    assert g.save
    assert g.comments.create(:title => "A tasteful commentary", :comment => "Wow, this gem sure is shitty.")
  end
end
