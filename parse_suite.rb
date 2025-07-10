# parse_suite.rb
require 'yaml'

suite_name = ENV['SUITE_NAME'] || 'smokeUI'
env = ENV['ENV'] || 'prod'

# Load YAML file
suites_config = YAML.load_file('suites.yml')

# ✅ Ensure structure is correct
unless suites_config['suites']
  raise "Missing top-level 'suites' key in suites.yml"
end

suite = suites_config['suites'][suite_name]

unless suite && suite['spec']
  raise "Suite '#{suite_name}' not found or missing 'spec'"
end

spec_path = suite['spec']
config_file = "config/#{env}.yml"

# ✅ Final output (must be exact format for GitHub Actions)
puts "SUITES=#{spec_path}"
puts "CONFIG_FILE=#{config_file}"