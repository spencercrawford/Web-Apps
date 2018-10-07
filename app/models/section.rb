class Section < ApplicationRecord
  belongs_to :course
  has_many :students, dependent: :delete_all
  validates_uniqueness_of :number, scope: [:course_id, :semester]

  def full_number
    "#{course.number} - 00"
  end
end
