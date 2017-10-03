Dir[File.join(File.dirname(__FILE__), '../utils/*.rb')].each { |file| require file }

require 'simplecov'
require 'rspec'
require 'rspec/expectations'
require 'factory_girl'

include RSpec::Matchers.dup

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

FactoryGirl.definition_file_paths = %w{./factories ./test/factories ./spec/factories}
FactoryGirl.find_definitions


=begin
RSpec.configure do |config|
  config.include FixtureHelper
  config.include WebMock::API
  config.infer_base_class_for_anonymous_controllers = false
  config.fixture_path = 'spec/fixtures/'
end
=end
