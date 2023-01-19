# frozen_string_literal: true

require 'http'

module Labelryb
  # Does the REST API stuff
  class API
    def initialize(dpmm, width, height)
      @dpmms = {
        i6dpmm: '6dpmm',
        i8dpmm: '8dpmm',
        i12dpmm: '12dpmm',
        i24dpmm: '24dpmm'
      }

      raise Labelryb::Error, 'Invalid dpmm type' unless @dpmms.key? dpmm
      raise Labelryb::Error, 'Width must be positive' unless width.positive?
      raise Labelryb::Error, 'Height must be positive' unless height.positive?

      @url = "http://api.labelary.com/v1/printers/#{@dpmms[dpmm]}/labels/#{width}x#{height}/0/"
    end

    def render_zpl(zpl)
      PDF.new(HTTP.headers(accept: 'application/pdf')
          .post(@url, body: zpl.to_s).body.to_s)
    end
  end
end
