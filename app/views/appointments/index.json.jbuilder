json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :date_of_visit, :pet_id, :doctor_id, :requires_reminder, :reason_for_visit
  json.url appointment_url(appointment, format: :json)
end
