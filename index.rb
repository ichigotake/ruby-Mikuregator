require 'sinatra'
require 'sinatra/reloader' if development?
require 'active_support/core_ext'

get '/' do
    erb :index
end

get '/about' do
    erb :about
end

get '/authors' do
    erb :authors
end

get '/random' do
    erb :random
end

get '/recent' do
    erb :recent
end

get '/user/repo' do
    erb :repo
end

get '/search' do
    erb :search
end

get %r{/user(:?/(.*))?} do
    erb :users
end

