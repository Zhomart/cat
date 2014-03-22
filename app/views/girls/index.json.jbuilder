json.array!(@girls) do |girl|
  json.extract! girl, :id, :name
  json.url girl_url(girl, format: :json)
end
