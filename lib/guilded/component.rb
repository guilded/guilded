require 'active_support/core_ext/hash'
require 'active_support/inflector'
require 'active_support/json'

module Guilded
  class Component

    attr_reader :name,
                :has_javascript,
                :options

    def initialize( name, options={} )
      @name           = name
      @has_javascript = options.fetch( :has_javascript, true )

      options.delete :has_javascript

      @options        = options.stringify_keys
    end

    def javascript_initializer
      javascript? ?
        "g.init#{name.to_s.camelize}(#{options.to_json});" :
        ""
    end

    def javascript?
      has_javascript
    end

  end
end
