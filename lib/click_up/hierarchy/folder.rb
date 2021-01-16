# frozen_string_literal: true

module ClickUp
  class Folder < APIResource
    extend ClickUp::APIOperations::All
    extend ClickUp::APIOperations::Create
    extend ClickUp::APIOperations::Get
    extend ClickUp::APIOperations::Delete

    class << self
      def index_path(params={})
        "/space/#{params[:space_id]}/folder"
      end

      def resource_path(params={})
        "/folder/#{params[:id]}"
      end

      def rejected_params
        [
          :id,
          :space_id
        ]
      end

      def formatted_params(params)
        params.reject {|key, _| rejected_params.include?(key) }
        # {
        #   "name": "Updated Folder Name"
        # }
      end
    end
  end
end