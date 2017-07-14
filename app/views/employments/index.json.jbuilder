json.array!(@employments) do |employment|
  json.extract! employment, :id, :manager, :staff, :user_id, :company_id
  json.url employment_url(employment, format: :json)
end
