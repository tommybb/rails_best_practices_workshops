class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.belongs_to :user_id, index: true
      t.text :title
      t.text :description

      t.timestamps
    end
  end
end
