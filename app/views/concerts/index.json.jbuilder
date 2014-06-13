json.array!(@concerts) do |concert|
  json.extract! concert, :id, :date, :title, :place
  json.url concert_url(concert, format: :json)
end
