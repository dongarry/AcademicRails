class IndexController < ApplicationController
  layout "Main"
  def hello
    @message = "Welcome to the Personality Cinema Assessment"
    @users = User.find(:all)
    @users.each {|user|user.destroy}
  end
end
