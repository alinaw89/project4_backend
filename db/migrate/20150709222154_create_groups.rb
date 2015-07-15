class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.string :manager_name
      t.string :manager_phone
    end
  end
end
