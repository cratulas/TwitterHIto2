json.extract! tweet, :id, :content, :retweets, :user_id, :created_at, :updated_at
json.url tweet_url(tweet, format: :json)
