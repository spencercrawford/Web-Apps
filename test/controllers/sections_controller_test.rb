require 'test_helper'

class SectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @section = sections(:one)
    @update = {
        course_id: 1,
        number: 1,
        room_number: 1010,
        semester: "Fall 2018"
    }
    @student = { student_ids: 1 }
  end

  test "should get index" do
    get sections_url
    assert_response :success
  end

  test "should get new" do
    get new_section_url
    assert_response :success
  end

  test "should create section" do
    assert_difference('Section.count') do
      post sections_url, params: { section: { course_id: @section.course_id, number: @section.number, room_number: @section.room_number, semester: @section.semester, student_ids: [] } }
    end

    assert_redirected_to section_url(Section.last)
  end

  test "should show section" do
    get section_url(@section)
    assert_response :success
  end

  test "should get edit" do
    get edit_section_url(@section)
    assert_response :success
  end

  test "should update section" do
    patch section_url(@section), params: { section: @update }
    assert_redirected_to section_url(@section)
  end

  test "should destroy section" do
    assert_difference('Section.count', -1) do
      delete section_url(@section)
    end

    assert_redirected_to sections_url
  end

  test "should add a student" do
    patch section_url(@section), params: { student_ids: [ 1 ]}
    assert_response :success
  end

end
