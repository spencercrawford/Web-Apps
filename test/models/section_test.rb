require 'test_helper'

class SectionTest < ActiveSupport::TestCase

  test "section attributes must not be empty" do
    section = Section.new
    assert section.invalid?
    assert section.errors[:room_number]
    assert section.errors[:number]
    assert section.errors[:semester]
    assert section.errors[:course_id]
  end

end
