class RenameGemToOverflowGem < ActiveRecord::Migration
  def self.up
    rename_table :gems, :overflow_gems
    
    change_table :gem_attributes do |t|
      t.rename :gem_id, :overflow_gem_id
    end
  end

  def self.down
    change_table :gem_attributes do |t|
      t.rename :overflow_gem_id, :gem_id
    end
    
    rename_table :overflow_gems, :gems
  end
end
