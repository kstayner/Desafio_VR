require 'rspec'
require 'cucumber'
require 'httparty'
require 'yaml'

ENVIRONMENT = YAML.load_file('./config/environment.yml')
