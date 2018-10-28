require 'test_helper'

class StudentTest < ActiveSupport::TestCase

  test "student attributes must not be empty" do
    student = Student.new
    assert student.invalid?
    assert student.errors[:first_name]
    assert student.errors[:last_name]
  end

end
