# encoding: utf-8
require 'sinatra/base'
require 'mustache/sinatra'

class App < Sinatra::Base
  register Mustache::Sinatra
  set :views, 'templates/'
  set :mustaches, 'views/'

  enable :static
  set :public, File.join(File.dirname(__FILE__), 'public')

  get '/' do
    mustache :index
  end

  get '/javascript/geolocation' do
    @title = 'Géolocalisation'
    mustache :javascript_geolocation
  end

  get '/javascript/storage' do
    @title = 'Stockage local'
    mustache :javascript_storage
  end

end
