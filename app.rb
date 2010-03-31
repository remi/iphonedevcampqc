# encoding: utf-8
# vim: set fdm=marker:

require 'sinatra/base'
require 'mustache/sinatra'

class App < Sinatra::Base
  register Mustache::Sinatra
  set :views, 'templates/'

  enable :static
  set :public, File.join(File.dirname(__FILE__), 'public')

  get '/' do
    @title = 'HTML5 - Quelles sont les possibilités que nous offre le iPhone/iPad en terme de HTML, CSS et Javascript?'
    mustache :index, {}, { :title => @title }
  end

  # HTML {{{
  get '/html/input' do
    @title = 'Types de champ - HTML — HTML5'
    mustache :html_input, {}, { :title => @title }
  end

  get '/html/video' do
    @title = 'Video - HTML — HTML5'
    mustache :html_video, {}, { :title => @title }
  end

  get '/html/icon' do
    @title = 'Apple Touch Icon - HTML — HTML5'
    mustache :html_icon, {}, { :title => @title }
  end

  get '/html/icon-precomposed' do
    @title = 'Apple Touch Icon Precomposed - HTML — HTML5'
    mustache :html_iconprecomposed, {}, { :title => @title }
  end

  get '/html/telephone' do
    @title = 'Format-detection - HTML — HTML5'
    mustache :html_telephone, {}, { :title => @title }
  end

  get '/html/telephone-no' do
    @title = 'Format-detection - HTML — HTML5'
    mustache :html_telephoneno, {}, { :title => @title }
  end

  get '/html/attributs' do
    @title = 'Nouveaux attributs - HTML — HTML5'
    mustache :html_attributs, {}, { :title => @title }
  end
  # }}}
 
  # CSS {{{
  get '/css/text-size-adjust' do
    @title = 'Text-size-adjust - CSS — HTML5'
    mustache :css_textsizeadjust, {}, { :title => @title }
  end

  get '/css/tap-highlight-color' do
    @title = 'Tap-highlight-color - CSS — HTML5'
    mustache :css_taphighlight, {}, { :title => @title }
  end

  get '/css/text-shadow' do
    @title = 'Text-shadow - CSS — HTML5'
    mustache :css_textshadow, {}, { :title => @title }
  end

  get '/css/transform' do
    @title = 'Transformations - CSS — HTML5'
    mustache :css_transform, {}, { :title => @title }
  end

  get '/css/border-radius' do
    @title = 'Border-radius - CSS — HTML5'
    mustache :css_borderradius, {}, { :title => @title }
  end

  get '/css/box-shadow' do
    @title = 'Box-shadow - CSS — HTML5'
    mustache :css_boxshadow, {}, { :title => @title }
  end
  # }}}

  # Javascript {{{
  get '/javascript/cache' do
    @title = 'Cache - Javascript — HTML5'
    @html = ' manifest="cache.manifest"'
    mustache :javascript_cache, {}, { :title => @title, :html => @html }
  end

  get '/javascript/evenements' do
    @title = 'Événements - Javascript — HTML5'
    mustache :javascript_evenements, {}, { :title => @title }
  end

  get '/javascript/geolocation' do
    @title = 'Géolocalisation - Javascript — HTML5'
    mustache :javascript_geolocation, {}, { :title => @title }
  end

  get '/javascript/storage' do
    @title = 'Stockage local - Javascript — HTML5'
    mustache :javascript_storage, {}, { :title => @title }
  end

  get '/javascript/canvas' do
    @title = 'Canvas - Javascript — HTML5'
    mustache :javascript_canvas, {}, { :title => @title }
  end

  get '/javascript/touch' do
    @title = 'Événements “touch” - Javascript — HTML5'
    mustache :javascript_touch, {}, { :title => @title }
  end

  get '/javascript/gesture' do
    @title = 'Événements “gesture” - Javascript — HTML5'
    mustache :javascript_gesture, {}, { :title => @title }
  end
  # }}}

end
