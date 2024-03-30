require 'sinatra'
require 'json'

require './lib/travel'

post '/plan' do
    response = Travel
        .new
        .dates(params[:start_date], params[:end_date])
        .destination(params[:destination])
        .origin(params[:origin])
        .plan!
    response.to_json
end