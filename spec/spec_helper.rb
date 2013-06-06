ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'rspec/autorun'
require 'valid_attribute'

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.fixture_path = Rails.root.join("spec", "fixtures")
  config.use_transactional_fixtures = true
  config.infer_base_class_for_anonymous_controllers = true
end

