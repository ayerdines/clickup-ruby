# frozen_string_literal: true

module ClickUp
  class Space < APIResource
    extend ClickUp::APIOperations::All
    extend ClickUp::APIOperations::Create
    extend ClickUp::APIOperations::Get

    class << self
      def index_path(params={})
        "/team/#{params[:team_id]}/space"
      end

      def resource_path(params={})
        "/space/#{params[:id]}"
      end

      def rejected_params
        [
          :id,
          :team_id
        ]
      end

      def formatted_params(params)
        params.reject {|key, _| rejected_params.include?(key) }
        # {
        #   "name": "New Space Name",
        #   "multiple_assignees": true,
        #   "features": {
        #     "due_dates": {
        #       "enabled": true,
        #       "start_date": false,
        #       "remap_due_dates": true,
        #       "remap_closed_due_date": false
        #     },
        #     "time_tracking": {
        #       "enabled": false
        #     },
        #     "tags": {
        #       "enabled": true
        #     },
        #     "time_estimates": {
        #       "enabled": true
        #     },
        #     "checklists": {
        #       "enabled": true
        #     },
        #     "custom_fields": {
        #       "enabled": true
        #     },
        #     "remap_dependencies": {
        #       "enabled": true
        #     },
        #     "dependency_warning": {
        #       "enabled": true
        #     },
        #     "portfolios": {
        #       "enabled": true
        #     }
        #   }
        # }
      end
    end
  end
end