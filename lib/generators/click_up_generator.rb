# frozen_string_literal: true

require 'rails/generators'

module ClickUp
  module Generators
    class ClickUpGenerator < Rails::Generators::Base
      desc "This generator creates click_up.rb file at config/initializers"
      def create_initializer_file
        create_file "config/initializers/click_up.rb", "# Add ClickUp.api_token here\nClickUp.api_token = 'xxxxxxxxxxxxxxxxxxxxxxxxxxx'"
      end
    end
  end
end