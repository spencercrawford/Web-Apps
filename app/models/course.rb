class Course < ApplicationRecord
  has_many :sections, dependent: :delete_all
  validates_uniqueness_of :name
end
