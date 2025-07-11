require 'yaml'

suite_name = ENV['SUITE_NAME'] || 'smokeUI'
env = ENV['ENV'] || 'prod'

suites_path = File.expand_path('../github/suites.yml', __dir__)
suites_config = YAML.load_file(suites_path)
suite = suites_config['suites'][suite_name]

unless suite && suite['spec']
  raise "Suite '#{suite_name}' not found or missing 'spec'"
end

spec_path = suite['spec']
config_file = "config/#{env}.yml"

File.open(ENV['GITHUB_ENV'], 'a') do |f|
  f.puts "SUITES=#{spec_path}"
  f.puts "CONFIG_FILE=#{config_file}"
  f.puts "TEST_ENV=#{env}"              # <-- Add this line
end