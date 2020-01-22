class User
  include Redis::Objects
  counter :my_posts
  def id
    1
  end
end