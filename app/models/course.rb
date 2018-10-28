class Course < ApplicationRecord
  has_many :sections, dependent: :destroy
  validates_uniqueness_of :name
end