json.array!(@surveys) do |survey|
  json.extract! survey, :id, :name, :description, :author_id
  json.url survey_url(survey, format: :json)
end
