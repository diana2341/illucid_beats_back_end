class CreateSounds < ActiveRecord::Migration[6.0]
  def change
    create_table :sounds do |t|
      t.string :mp3

      t.timestamps
    end
  end
end
