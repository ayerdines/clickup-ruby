# frozen_string_literal: true

require 'json'
require 'net/http'

require 'click_up/errors'

require 'click_up/connection_manager'
require 'click_up/api_resource'

require 'click_up/api_operations/create'
require 'click_up/api_operations/get'
require 'click_up/api_operations/all'
require 'click_up/api_operations/delete'

require 'click_up/hierarchy/team'
require 'click_up/hierarchy/space'
require 'click_up/hierarchy/folder'
require 'click_up/hierarchy/task'
require 'click_up/hierarchy/list'

require 'click_up/version'

module ClickUp
  class << self
    attr_accessor :api_token
  end
end