class FixOffersColumnName < ActiveRecord::Migration
  def change
    rename_column :offers, :user_id, :user_id
  end
end
