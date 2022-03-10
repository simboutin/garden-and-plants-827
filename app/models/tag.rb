class Tag < ApplicationRecord
  TAG_NAMES = %w[fruit tree flower].freeze

  has_many :plant_tags
  has_many :plants, through: :plant_tags

  validates :name, presence: true, inclusion: { in: TAG_NAMES }
end
