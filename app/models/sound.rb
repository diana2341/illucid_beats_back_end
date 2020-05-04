class Sound < ApplicationRecord
    has_many :sound_volumes 
    has_many :saved_mash_ups, through: :sound_volumes

end
