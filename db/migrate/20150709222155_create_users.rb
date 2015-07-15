class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email, null:false, index: { unique:true }
      t.string :phone_number
      t.string :password_digest, null:false
      t.string :token, null:false, index: { unique:true }
      t.references :group, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
