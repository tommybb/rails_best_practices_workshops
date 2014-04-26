class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.belongs_to :user_id, index: true
      t.text :message

      t.timestamps
    end
  end
end
