# frozen_string_literal: true

require_relative 'labelryb/version'
require_relative 'labelryb/zpl'
require_relative 'labelryb/pdf'
require_relative 'labelryb/api'

module Labelryb
  class Error < StandardError; end
end
