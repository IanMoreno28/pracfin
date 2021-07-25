json.extract! presenter, :id, :first_name, :last_name, :gender, :age, :created_at, :updated_at
json.url presenter_url(presenter, format: :json)
