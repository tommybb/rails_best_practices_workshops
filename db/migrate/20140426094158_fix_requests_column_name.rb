class FixRequestsColumnName < ActiveRecord::Migration
  def change
    rename_column :requests, :user_id_id, :user_id
  end
end
