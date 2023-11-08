class RemoveScheduelIdFromPets < ActiveRecord::Migration[7.0]
  def change
    remove_column :pets, :schedule_id
  end
end
