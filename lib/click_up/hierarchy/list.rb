# frozen_string_literal: true

module ClickUp
  class List < APIResource
    extend ClickUp::APIOperations::All
    extend ClickUp::APIOperations::Create
    extend ClickUp::APIOperations::Get

    class << self
      def index_path(params={})
        if params.has_key?(:folder_id)
          folder_path(params[:folder_id])
        elsif params.has_key?(:space_id)
          folderless_path(params[:space_id])
        else
          raise ArgumentError, "Either folder_id or space_id is required."
        end
      end

      def folder_path(folder_id)
        "/folder/#{folder_id}/list"
      end

      def folderless_path(space_id)
        "/space/#{space_id}/list"
      end

      def resource_path(params={})
        "/list/#{params[:id]}"
      end

      def rejected_params
        [
          :id,
          :folder_id,
          :space_id
        ]
      end

      def formatted_params(params)
        params.reject {|key, _| rejected_params.include?(key) }
        # {
        #   "name": "New List Name",
        #   "content": "Sent from API V2",
        #   "due_date": 1577811600000,
        #   "due_date_time": false,
        #   "priority": 1,
        #   "assignee": 53480,
        #   "status": "red"
        # }
      end
    end
  end
end