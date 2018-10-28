class Student < ApplicationRecord
  belongs_to :course
  belongs_to :section
  validates_uniqueness_of :name, :scope => [:course_id, :section_id]

  def full_number
    "#{section.course.number} - 00"
  end
end
