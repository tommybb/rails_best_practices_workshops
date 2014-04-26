class Request < ActiveRecord::Base
  belongs_to :users
  has_many :offers
end
