# frozen_string_literal: true

module ClickUp
  class ConnectionManager
    attr_reader :path, :data

    def initialize(path, data)
      @path = path
      @data = data
    end

    def get
      net_http_response = https_client.request_get(resource_url.path, default_headers)
      format_response(net_http_response.body)
    end

    def post
      form_data = data.to_json if data.is_a?(Hash) && data.size > 0
      net_http_response = https_client.request_post(resource_url.path, form_data, default_headers)
      format_response(net_http_response.body)
    end

    def delete
      net_http_response = https_client.delete(resource_url.path, default_headers)
      format_response(net_http_response.body)
    end

    private
    def resource_url
      uri = URI("#{api_base}#{namespace}#{path}")
      uri.query = URI.encode_www_form(data) if data.size > 0
      uri
    end

    def namespace
      "/api/v2"
    end

    def api_base
      "https://api.clickup.com"
    end

    def default_headers
      {
        'Content-Type' => 'application/json',
        'Authorization' => ClickUp.api_token
      }
    end

    def format_response(net_http_response)
      JSON.parse(net_http_response)
    end

    def https_client
      https = Net::HTTP.new(resource_url.host, resource_url.port)
      https.use_ssl = true
      https
    end
  end
end