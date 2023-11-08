class ChangeOwnerIdToUserIdInPhotos < ActiveRecord::Migration[7.0]
  def change
    rename_column :photos, :owner_id, :user_id
  end
end
