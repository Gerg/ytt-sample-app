require 'sinatra'
require 'yaml'

Tilt.register Tilt::ERBTemplate, 'html.erb'
config = YAML.safe_load_file('config.yml')

get '/' do
  puts config["text"]
  erb :index, locals: { text: config["text"] }
end
