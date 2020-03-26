require 'sinatra'

get '/' do
  env = request.env.reject { |k, _| k.match?(/rack|sinatra/) }
  env.reduce('') do |acc, item|
    acc + "#{item.join(':')}\n"
  end
end
