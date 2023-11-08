class RemoveScheduleFromPets < ActiveRecord::Migration[7.0]
  def change
    remove_column :pets, :schedule
  end
end
