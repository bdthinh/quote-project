json.array!(@departments) do |department|
  json.extract! department, :name, :place
  json.url department_url(department, format: :json)
end
