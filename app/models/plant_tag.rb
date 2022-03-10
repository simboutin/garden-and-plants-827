class PlantTag < ApplicationRecord
  belongs_to :plant
  belongs_to :tag

  validates :tag, uniqueness: { scope: :plant, message: 'has already been added to the plant'}
end
