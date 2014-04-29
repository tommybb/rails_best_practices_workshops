class AddRequestToOffers < ActiveRecord::Migration
  def change
    add_reference :offers, :tender, index: true
  end
end
