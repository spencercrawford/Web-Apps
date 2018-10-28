require 'test_helper'

class SemesterTest < ActiveSupport::TestCase
  test "semester attributes must not be empty" do
    semester = Semester.new
    assert semester.invalid?
    assert semester.errors[:term]
  end
end
