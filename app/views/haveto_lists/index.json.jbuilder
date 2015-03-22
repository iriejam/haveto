json.array!(@haveto_lists) do |haveto_list|
  json.extract! haveto_list, :id, :title, :description
  json.url haveto_list_url(haveto_list, format: :json)
end
