json.array!(@teachers) do |teacher|
  json.extract! teacher, :name, :description
  json.url teacher_url(teacher, format: :json)
end
