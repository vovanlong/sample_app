class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  def hello
    render html: "hello, world!<span style='color:green'>rhymastic</span>"
  end

  private

  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = t "users.logged_in.content"
      redirect_to login_url
     end
   end
end
