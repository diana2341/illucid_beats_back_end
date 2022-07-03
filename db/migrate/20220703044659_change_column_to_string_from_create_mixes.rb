class ChangeColumnToStringFromCreateMixes < ActiveRecord::Migration[6.0]
  def change
    change_column :mixes, :user_id, :string

  end
end
