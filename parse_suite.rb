# parse_suite.rb
require 'yaml'

env = ENV['ENV'] || 'prod'
suite = ENV['SUITE_NAME'] || 'smokeUI'

suite_config = YAML.load_file("suites.yml")
selected_suite = suite_config[suite]

raise "Suite '#{suite}' not found" unless selected_suite

config_file = "config/#{env}.yml"
spec_path = selected_suite['path']

puts "SUITES=#{spec_path}"
puts "CONFIG_FILE=#{config_file}"