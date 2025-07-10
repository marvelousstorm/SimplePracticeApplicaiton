require 'yaml'

suite_name = ENV['SUITE_NAME'] || 'smokeUI'
env = ENV['ENV'] || 'prod'

suites_config = YAML.load_file('suites.yml')
suite = suites_config['suites'][suite_name]

unless suite && suite['spec']
  raise "Suite '#{suite_name}' not found or missing 'spec'"
end

spec_path = suite['spec']
config_file = "config/#{env}.yml"

# Important: must output plain lines for GitHub to eval
puts "SUITES=#{spec_path}"
puts "CONFIG_FILE=#{config_file}"