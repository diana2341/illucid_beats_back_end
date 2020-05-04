class SavedMashUp < ApplicationRecord
    has_many :sound_volumes
    belongs_to :user
end
