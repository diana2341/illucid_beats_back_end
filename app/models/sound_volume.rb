class SoundVolume < ApplicationRecord
    belongs_to :sound 
    belongs_to :saved_mash_up

end
# user1= User.create(username:"diana")
# saved=SavedMashUp.create(user:user1,mix_name:"name")
# sound1=Sound.create(mp3:"url")
# soundV=SoundVolume.create(saved_mash_up:saved,volume:1,sound:sound1)