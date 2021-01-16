# frozen_string_literal: true

module ClickUp
  class Task < APIResource
    extend ClickUp::APIOperations::All
    extend ClickUp::APIOperations::Create
    extend ClickUp::APIOperations::Get
    extend ClickUp::APIOperations::Delete

    class << self
      def index_path(params={})
        "/list/#{params[:list_id]}/task"
      end

      def resource_path(params={})
        "/task/#{params[:id]}"
      end

      def rejected_params
        [
          :id,
          :list_id
        ]
      end

      def formatted_params(params)
        params.reject {|key, _| rejected_params.include?(key) }
        # {
        #   "name": "New Task Name",
        #   "description": "New Task Description",
        #   "assignees": [
        #     183
        #   ],
        #   "tags": [
        #     "tag name 1"
        #   ],
        #   "status": "Open",
        #   "priority": 3,
        #   "due_date": 1508369194377,
        #   "due_date_time": false,
        #   "time_estimate": 8640000,
        #   "start_date": 1567780450202,
        #   "start_date_time": false,
        #   "notify_all": true,
        #   "parent": null,
        #   "links_to": null,
        #   "custom_fields": [
        #     {
        #       "id": "0a52c486-5f05-403b-b4fd-c512ff05131c",
        #       "value": 23
        #     },
        #     {
        #       "id": "03efda77-c7a0-42d3-8afd-fd546353c2f5",
        #       "value": "Text field input"
        #     }
        #   ]
        # }
      end
    end
  end
end