json.extract! tveet, :id, :body, :likes_count, :retweets_count, :created_at, :updated_at
json.url tveet_url(tveet, format: :json)
