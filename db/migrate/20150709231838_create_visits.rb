class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.string :start_of_visit
      t.string :end_of_visit
      t.string :protocol
      t.string :subject_id
      t.string :reason_for_visit
      t.text :message
      t.string :visit_status
      t.string :sent_status
      t.string :manager_response_status

      t.timestamps null: false
    end
  end
end
