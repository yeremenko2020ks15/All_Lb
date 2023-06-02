json.extract! klinik, :id, :name, :type, :city, :RatingMorality, :created_at, :updated_at
json.url klinik_url(klinik, format: :json)
