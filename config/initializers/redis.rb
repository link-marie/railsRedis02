# Redis.new(:host => '127.0.0.1', :port => 6379)
if Rails.env.development?
  Redis.current = Redis.new
else
  Redis.current = Redis.new(url: ENV["REDIS_URL"])
end
