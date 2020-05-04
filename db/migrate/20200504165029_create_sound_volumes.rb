class CreateSoundVolumes < ActiveRecord::Migration[6.0]
  def change
    create_table :sound_volumes do |t|
      t.integer :saved_mash_up_id 
      t.integer :sound_id 
      t.float :volume
      t.timestamps
    end
  end
end
