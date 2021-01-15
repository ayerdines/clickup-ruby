# frozen_string_literal: true

module ClickUp
  class ClickUpError < StandardError
    attr_reader :message

    def initialize(msg = nil)
      @message = msg
    end

    def to_s
      "#{message}"
    end
  end

  class ParamRequiredError < ClickUpError
    attr_reader :params

    def initialize(msg, *params)
      super(msg)
      @params = params
    end
  end
end