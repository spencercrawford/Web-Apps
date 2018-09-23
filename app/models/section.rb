class Section < ApplicationRecord
  belongs_to :course
  validates_uniqueness_of :number
end
