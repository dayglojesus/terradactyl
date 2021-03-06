require_relative 'helpers'

working_dir  = File.dirname(__FILE__)
$fixtures_dir = File.join(working_dir, 'fixtures')
FileUtils.cd($fixtures_dir)

require 'pry'
require 'open3'
require 'bundler/setup'
require 'terradactyl'

RSpec.configure do |config|
  # Load the Helpers
  config.include Helpers

  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
