class RedisController < ApplicationController
  def show
    Redis.current.set('mykey', 'Hello redis02')
  end
end