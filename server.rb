require 'sinatra'
require 'json'

get '/*' do
  content_type :json
  data = request.env.select { |k, _| k.match?(/^(HTTP|REMOTE)/) }
  data.to_json
end
