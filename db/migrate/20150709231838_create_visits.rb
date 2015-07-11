class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.datetime :start_of_visit
      t.datetime :end_of_visit
      t.string :protocol
      t.string :subject_id
      t.string :reason_for_visit
      t.text :message
      t.string :visit_status
      t.string :sent_status
      t.string :manager_response_status
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
