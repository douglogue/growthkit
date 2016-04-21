json.array!(@leads) do |lead|
  json.extract! lead, :id, :email, :user_id
  json.url lead_url(lead, format: :json)
end
