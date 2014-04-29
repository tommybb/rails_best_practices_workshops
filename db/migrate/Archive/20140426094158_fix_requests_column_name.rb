class FixRequestsColumnName < ActiveRecord::Migration
  def change
    rename_column :requests, :user_id, :user_id
  end
end
