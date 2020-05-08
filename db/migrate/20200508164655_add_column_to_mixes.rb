class AddColumnToMixes < ActiveRecord::Migration[6.0]
  def change
    add_column :mixes, :cat_purring_volume, :float, default:0.0
    add_column :mixes, :night_sound_volume, :float, default:0.0
    add_column :mixes, :wind_chime_volume, :float, default:0.0

  end
end
