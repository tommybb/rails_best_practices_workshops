class CreateTenders < ActiveRecord::Migration
  def change
    create_table :tenders do |t|
      t.belongs_to :user, index: true
      t.text :title
      t.text :description

      t.timestamps
    end
  end
end
