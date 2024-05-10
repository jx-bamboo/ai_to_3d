class ThreeDimension < ApplicationRecord
  belongs_to :user
  has_many :likes

  validates :description, presence: true

  scope :my_models, -> {select(:id, :title, :description, :thumbnail, :status)}
end
