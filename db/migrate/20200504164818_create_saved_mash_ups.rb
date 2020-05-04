class CreateSavedMashUps < ActiveRecord::Migration[6.0]
  def change
    create_table :saved_mash_ups do |t|
      t.integer :user_id
      t.string :mix_name

      t.timestamps
    end
  end
end
