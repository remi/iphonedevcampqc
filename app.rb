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

  get '/css/text-shadow' do
    @title = 'Text-shadow - CSS — HTML5'
    mustache :css_textshadow
  end

  get '/css/transform' do
    @title = 'Transformations - CSS — HTML5'
    mustache :css_transform
  end

  get '/css/border-radius' do
    @title = 'Border-radius - CSS — HTML5'
    mustache :css_borderradius
  end

  get '/css/box-shadow' do
    @title = 'Box-shadow - CSS — HTML5'
    mustache :css_boxshadow
  end

  get '/javascript/geolocation' do
    @title = 'Géolocalisation - Javascript — HTML5'
    mustache :javascript_geolocation
  end

  get '/javascript/storage' do
    @title = 'Stockage local - Javascript — HTML5'
    mustache :javascript_storage
  end

end
