class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.datetime :time
      t.date :date
      t.string :location
      t.references :mentor
      t.references :topic
      t.references :student


      t.timestamps
    end
  end
end
