class ApplicationController < ActionController::Base
  def hello
    render html: "I'm railsRedis02!"
  end
end
