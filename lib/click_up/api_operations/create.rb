# frozen_string_literal: true

module ClickUp
  module APIOperations
    module Create
      def create(params={})
        execute_request(:post, index_path(params), formatted_params(params))
      end
    end
  end
end