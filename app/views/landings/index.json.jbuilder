json.array!(@landings) do |landing|
  json.extract! landing, :id, :title, :subtitle, :slug, :bg_image
  json.url landing_url(landing, format: :json)
end
