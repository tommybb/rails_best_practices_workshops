class Request < ActiveRecord::Base
  belongs_to :user_id
  has_many :offers
end
