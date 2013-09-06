class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :text
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
