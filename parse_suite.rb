# parse_suite.rb
require 'yaml'

suite_name = ENV['SUITE_NAME'] || 'smokeUI'
env = ENV['ENV'] || 'prod'

# Load full YAML
suites_config = YAML.load_file('suites.yml')

# FIX: Access nested structure correctly
suite = suites_config['suites'][suite_name]

unless suite && suite['spec']
  raise "Suite '#{suite_name}' not found or missing 'spec' key"
end

spec_path = suite['spec']
config_file = "config/#{env}.yml" # optional for use inside tests

puts "SUITES=#{spec_path}"
puts "CONFIG_FILE=#{config_file}"