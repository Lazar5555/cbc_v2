json.extract! recipe, :id, :user_id, :title, :description, :video_link, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
