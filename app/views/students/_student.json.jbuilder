json.extract! student, :id, :name, :course_id, :section_id, :created_at, :updated_at
json.url student_url(student, format: :json)
