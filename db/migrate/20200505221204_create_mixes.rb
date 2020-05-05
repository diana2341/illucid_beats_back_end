class CreateMixes < ActiveRecord::Migration[6.0]
  def change
    create_table :mixes do |t|
      t.integer :user_id
      t.string :mix_name
      t.float :light_rain_volume
      t.float :heavy_rain_volume
      t.float :large_fire_volume
      t.float :campfire_volume
      t.float :forest_volume
      t.float :river_volume
      t.float :strong_wind_volume
      t.float :light_wind_volume
      t.float :thunder_volume
      t.float :wave_volume
      t.float :coffee_shop_volume
      t.float :bird_volume

      t.timestamps
    end
  end
end



# iterate through through volume sound and set the volume to that. 
# how do i find the right sound and right volume?

# make function for each volume. it will set the volume and then you function