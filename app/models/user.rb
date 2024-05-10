class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :async
  
  has_many :drafts
  has_many :three_dimensions
  has_many :likes
  has_many :orders
  has_one :token
  has_many :token_changes
end
