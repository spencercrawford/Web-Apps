# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  $('#student_section_id').parent().hide()
  sections = $('#student_section_id').html()
  $('#student_course_id').change ->
    course = $('#student_course_id :selected').text()
    options = $(sections).filter("optgroup[label='#{course}']").html()
    if options
      $('#student_section_id').html(options)
      $('#student_section_id').parent().show()
    else
      $('#student_section_id').empty()
      $('#student_section_id').parent().hide()
