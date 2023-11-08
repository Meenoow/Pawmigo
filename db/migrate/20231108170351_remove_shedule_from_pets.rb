class RemoveSheduleFromPets < ActiveRecord::Migration[7.0]
  def change
    remove_column :pets, :shedule
  end
end
