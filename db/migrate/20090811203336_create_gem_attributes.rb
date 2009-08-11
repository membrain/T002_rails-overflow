class CreateGemAttributes < ActiveRecord::Migration
  def self.up
    create_table :gem_attributes do |t|
      t.references :gem
      t.references :user
      t.string :name
      t.string :value

      t.timestamps
    end
  end

  def self.down
    drop_table :gem_attributes
  end
end
