module ClickUp
  module APIOperations
    module Delete
      def delete(id=nil, **opts)
        params = opts.clone
        unless params.has_key?(:id) || id
          raise ParamRequiredError, "id is a required parameter.", "id"
        end
        params[:id] = id ? id : params[:id]
        execute_request(:delete, resource_path(params))
      end
    end
  end
end