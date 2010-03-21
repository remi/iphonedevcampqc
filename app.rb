# encoding: utf-8
# vim: set fdm=marker:
require 'sinatra/base'
require 'mustache/sinatra'

class App < Sinatra::Base
  register Mustache::Sinatra
  set :views, 'templates/'
  set :mustaches, 'views/'

  enable :static
  set :public, File.join(File.dirname(__FILE__), 'public')

  get '/' do
    @title = 'HTML5 - Quelles sont les possibilités que nous offre le iPhone/iPad en terme de HTML, CSS et Javascript?'
    mustache :index
  end

  # CSS {{{
  get '/css/text-size-adjust' do
    @title = 'Text-size-adjust - CSS — HTML5'
    mustache :css_textsizeadjust
  end

  get '/css/tap-highlight-color' do
    @title = 'Tap-highlight-color - CSS — HTML5'
    mustache :css_taphighlight
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
  # }}}

  # Javascript {{{
  get '/javascript/cache.html' do
    @title = 'Cache - Javascript — HTML5'
    @html = ' manifest="cache.manifest"'
    mustache :javascript_cache
  end

  get '/javascript/evenements' do
    @title = 'Événements - Javascript — HTML5'
    mustache :javascript_evenements
  end

  get '/javascript/geolocation' do
    @title = 'Géolocalisation - Javascript — HTML5'
    mustache :javascript_geolocation
  end

  get '/javascript/storage' do
    @title = 'Stockage local - Javascript — HTML5'
    mustache :javascript_storage
  end
  # }}}

end
