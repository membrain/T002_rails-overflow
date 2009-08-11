class CreateGems < ActiveRecord::Migration
  def self.up
    create_table :gems do |t|
      t.references :user
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :gems
  end
end
