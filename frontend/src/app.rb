require "sinatra"
require "faraday"

configure { set :server, :puma }

BACKEND_URL = ENV['BACKEND_URL']
# BACKEND_URL = "localhost"

class App < Sinatra::Base
  get "/" do
    "Welcome!"
  end

  get "/web" do
    response =  Faraday.get "http://#{BACKEND_URL}/api"

    "<html>Reponse from backend: #{response.body}</html>"
  end

  get "/health" do
    "Ok!"
  end
end

