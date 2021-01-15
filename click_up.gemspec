# frozen_string_literal: true

$:.unshift ::File.join(::File.dirname(__FILE__), "lib")

require "click_up/version"

Gem::Specification.new do |s|
  s.name = "click_up"
  s.version = ClickUp::VERSION
  s.required_ruby_version = ">= 2.3.0"
  s.summary = "Ruby library for the ClickUp API"
  s.description = "ClickUp: One app to replace them all."
  s.author = "ayer-dines"
  s.files = `git ls-files`.split("\n")
  s.email = "budhayer96d@gmail.com"
  s.homepage = "https://github.com/ayerdines/clickup-ruby"
  s.license = "MIT"
  s.require_paths = ["lib"]
end