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

# Write directly to GITHUB_ENV file for GitHub Actions
File.open(ENV['GITHUB_ENV'], 'a') do |f|
  f.puts "SUITES=#{spec_path}"
  f.puts "CONFIG_FILE=#{config_file}"
end