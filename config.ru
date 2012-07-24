# This file is used by Rack-based servers to start the application.
ENV['GEM_HOME'] = '/home/ucsbkkizcqbeoqu/.gems'
require 'rubygems'
Gem.clear_paths
require ::File.expand_path('../config/environment',  __FILE__)
run Searchabook::Application
