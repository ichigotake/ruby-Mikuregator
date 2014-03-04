require 'sinatra/activerecord/rake'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'active_support/core_ext'

require 'active_record'
require 'mysql2'

ActiveRecord::Base.configurations = YAML.load_file(File.join(File.dirname(__FILE__), 'configs', 'development.yml'))
ActiveRecord::Base.establish_connection('development')

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

