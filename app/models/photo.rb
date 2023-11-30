# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  owner_id   :integer          not null
#  pet_id     :integer          not null
#
# Indexes
#
#  index_photos_on_owner_id  (owner_id)
#  index_photos_on_pet_id    (pet_id)
#
# Foreign Keys
#
#  owner_id  (owner_id => owners.id)
#  pet_id    (pet_id => pets.id)
#
class Photo < ApplicationRecord
  belongs_to :pet
  belongs_to :user
  #belongs_to :owner, class_name: "User"
end
