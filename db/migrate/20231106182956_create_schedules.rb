class CreateSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|
      t.references :pet, null: false, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
