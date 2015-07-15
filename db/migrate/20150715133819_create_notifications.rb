class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.string :message
      t.boolean :responded
      t.references :visit, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
