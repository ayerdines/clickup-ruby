# frozen_string_literal: true

module ClickUp
  class APIResource
    class << self
      def execute_request(method, path, data={})
        client(path, data).send(method)
      end

      private
      def client(path, data)
        ConnectionManager.new(path, data)
      end
    end
  end
end
