class Semester < ApplicationRecord
  has_many :courses, dependent: :destroy
  validates_uniqueness_of :term
end
