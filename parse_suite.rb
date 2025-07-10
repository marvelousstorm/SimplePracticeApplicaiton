# parse_suite.rb
require 'yaml'

suite_name = ENV['SUITE_NAME'] || 'smokeUI'
env = ENV['ENV'] || 'prod'

suites_config = YAML.load_file('suites.yml')

# Debug: Print loaded YAML
puts "Loaded YAML: #{suites_config.inspect}"

suite = suites_config['suites'][suite_name]

unless suite && suite['spec']
  raise "Suite '#{suite_name}' not found or missing 'spec'"
end

spec_path = suite['spec']
config_file = "config/#{env}.yml"

# Debug: Confirm extracted values
puts "Parsed suite name: #{suite_name}"
puts "Parsed spec path: #{spec_path}"
puts "Parsed config file: #{config_file}"

# Required by GitHub Actions eval
puts "SUITES=#{spec_path}"
puts "CONFIG_FILE=#{config_file}"