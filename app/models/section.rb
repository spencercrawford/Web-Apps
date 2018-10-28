class Section < ApplicationRecord
  belongs_to :course
  belongs_to :semester
  has_many :students, dependent: :destroy
  validates_uniqueness_of :number, :scope => [:course_id, :number]

  def full_number
    "#{course.number} - 00#{number}"
  end
end
