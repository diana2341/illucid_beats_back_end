class CreateMixes < ActiveRecord::Migration[6.0]
  def change
    create_table :mixes do |t|
      t.integer :user_id
      t.string :mix_name
      t.float :light_rain_volume, default: 0
      t.float :heavy_rain_volume, default: 0
      t.float :large_fire_volume, default: 0
      t.float :campfire_volume, default: 0
      t.float :forest_volume, default: 0
      t.float :river_volume, default: 0
      t.float :strong_wind_volume, default: 0
      t.float :light_wind_volume, default: 0
      t.float :thunder_volume, default: 0
      t.float :wave_volume, default: 0
      t.float :coffee_shop_volume, default: 0
      t.float :bird_volume, default: 0

      t.timestamps
    end
  end
end



# iterate through through volume sound and set the volume to that. 
# how do i find the right sound and right volume?

# make function for each volume. it will set the volume and then you function