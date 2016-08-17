json.array!(@exercisehistories) do |exercisehistory|
  json.extract! exercisehistory, :id
  json.url exercisehistory_url(exercisehistory, format: :json)
end
