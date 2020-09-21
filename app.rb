# Require toutes les gems dans le Gemfile
require 'bundler'
Bundler.require

# Permet d'utiliser les classes des fichiers dans app.rb et
# Et plus besoin de préciser le path exact
$:.unshift File.expand_path("./../lib", __FILE__)

require 'router'

Router.new.perform


