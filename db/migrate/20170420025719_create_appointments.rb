class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.string :veterinarian
      t.datetime :time
      t.string :reason
      t.belongs_to :pet, foreign_key: true

      t.timestamps
    end
  end
end
