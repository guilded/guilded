require 'active_support/json'

module Guilded
  class Data

    attr_reader :content

    def initialize
      @content = {}
    end

    def add( data )
      content.merge! data
    end

    def to_javascript
      "g[\"data\"]=#{content.to_json};"
    end

    def empty?
      content.empty?
    end

  end
end
