json.array!(@classified_ads) do |classified_ad|
  json.extract! classified_ad, :title, :rent, :location, :description, :bed, :bath, :end_date
  json.url classified_ad_url(classified_ad, format: :json)
end
