class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.date :date_of_visit
      t.references :pet, index: true, foreign_key: true
      t.references :doctor, index: true, foreign_key: true
      t.boolean :requires_reminder
      t.string :reason_for_visit

      t.timestamps null: false
    end
  end
end
