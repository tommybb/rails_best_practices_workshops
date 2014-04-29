class FixOffersColumnName3 < ActiveRecord::Migration
  def change
    rename_column :offers, :offer_id, :tender_id
  end
end
