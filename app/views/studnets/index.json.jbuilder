json.array!(@studnets) do |studnet|
  json.extract! studnet, :id, :name, :weight, :height, :color, :gpa
  json.url studnet_url(studnet, format: :json)
end
