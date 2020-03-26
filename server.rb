require 'sinatra'
require 'json'

get '/' do
  content_type :json
  data = request.env.reject { |k, _| k.match?(/rack|sinatra/) }
  data.to_json
end
