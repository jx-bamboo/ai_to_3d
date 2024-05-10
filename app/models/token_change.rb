class TokenChange < ApplicationRecord
  belongs_to :user
  belongs_to :token
end
