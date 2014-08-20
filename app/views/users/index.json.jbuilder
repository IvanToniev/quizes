json.array!(@users) do |user|
  json.extract! user, :id, :email, :password, :first_name, :last_name, :is_admin
  json.url user_url(user, format: :json)
end
