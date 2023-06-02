json.extract! patient, :id, :full, :name, :patient_card, :created_at, :updated_at
json.url patient_url(patient, format: :json)
