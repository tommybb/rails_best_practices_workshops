class Offer < ActiveRecord::Base
  belongs_to :user_id
  belongs_to :request
end
