# frozen_string_literal: true

module Labelryb
  # Contains the PDF
  class PDF
    def initialize(pdf_bytes)
      raise Labelryb::Error, 'Input must be a string' unless pdf_bytes.is_a? String
      raise Labelryb::Error, 'Empty string' if pdf_bytes.empty?

      @pdf_bytes = pdf_bytes
    end

    def to_file(uri)
      file = File.open(uri, 'w')
      file.write(@pdf_bytes)
      file.flush
      file.close
    end

    def to_s
      @pdf_bytes
    end
  end
end
