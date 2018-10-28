require 'test_helper'

class CourseTest < ActiveSupport::TestCase

  test "course attributes must not be empty" do
    course = Course.new
    assert course.invalid?
    assert course.errors[:name].any?
    assert course.errors[:number].any?
    assert course.errors[:department].any?
    assert course.errors[:credit_hours].any?
  end

end
