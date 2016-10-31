json.array!(@candidates) do |candidate|
  json.extract! candidate, :id, :name, :description
  json.url candidate_url(candidate, format: :json)
end
