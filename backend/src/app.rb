require "sinatra"
configure { set :server, :puma }

class App < Sinatra::Base
  get "/" do
    "Welcome!"
  end

  get "/api" do
    "You hit backend service!"
  end

  get "/health" do
    "Ok!"
  end
end

