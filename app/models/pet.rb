# == Schema Information
#
# Table name: pets
#
#  id         :integer          not null, primary key
#  breed      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_pets_on_user_id  (user_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
class Pet < ApplicationRecord
  belongs_to :user
  belongs_to :schedule
  has_many :schedules
  has_many :notes
  has_many :photos
end
