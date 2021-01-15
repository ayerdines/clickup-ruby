# frozen_string_literal: true

module ClickUp
  class Team < APIResource
    extend ClickUp::APIOperations::All

    class << self
      def index_path(params={})
        "/team"
      end
    end
  end
end