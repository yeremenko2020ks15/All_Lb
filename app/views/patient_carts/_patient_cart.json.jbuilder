json.extract! patient_cart, :id, :klinik, :doctor, :created_at, :updated_at
json.url patient_cart_url(patient_cart, format: :json)
