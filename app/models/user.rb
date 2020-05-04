class User < ApplicationRecord
    has_many :saved_mash_ups
    has_many :sound_volumes, through: :saved_mash_ups

end
# user1= User.create(username:"diana")
# saved=SavedMashUp.create(user:user1,mix_name:"name")