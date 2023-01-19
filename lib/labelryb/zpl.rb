# frozen_string_literal: true

module Labelryb
  # Contains the ZPL
  class ZPL
    def initialize(commands)
      raise Labelryb::Error, 'Input must be a string' unless commands.is_a? String
      raise Labelryb::Error, 'Empty string' if commands.empty?
      raise Labelryb::Error, 'Invalid ZPL' unless ZPL.valid?(commands)

      @commands = commands
    end

    # Only apply simple validation here
    def self.valid?(commands)
      commands.match?(/\^XA((.|\n)*)\^XZ/)
    end

    def self.from_file(uri)
      file = File.open(uri)
      file_contents = file.read
      file.close
      ZPL.new(file_contents)
    end

    def to_s
      @commands
    end
  end
end
