class CreatePhotos < ActiveRecord::Migration[7.0]
  def change
    create_table :photos do |t|
      t.references :pet, null: false, foreign_key: true
      #t.references :owner, null: false, foreign_key: true
      t.references :owner, null: false, foreign_key: { to_table: :users }
     

      t.timestamps
    end
  end
end
