class FixOffersColumnName2 < ActiveRecord::Migration
  def change
    rename_column :offers, :request_id, :offer_id
  end
end
