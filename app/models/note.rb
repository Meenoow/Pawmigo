# == Schema Information
#
# Table name: notes
#
#  id         :integer          not null, primary key
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  pet_id     :integer          not null
#
# Indexes
#
#  index_notes_on_pet_id  (pet_id)
#
# Foreign Keys
#
#  pet_id  (pet_id => pets.id)
#
class Note < ApplicationRecord
  belongs_to :pet
end
