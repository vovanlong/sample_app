class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    render html: "hello, world!<span style='color:green'>rhymastic</span>"
  end
end
