module Guilded
  class Guilder

    attr_reader :components,
                :data

    def initialize
      @components = []
      @data       = Guilded::Data.new
    end

    def add( name, options={} )
      components << Guilded::Component.new( name, options )
    end

    def add_data( new_data )
      data.add new_data
    end

    def javascript_initializer
      code = "<script type=\"text/javascript\">\n//<![CDATA[\n"
      code << data.to_javascript
      if javascript_from_components?
        code << "var initGuilded = function(){"
        components.each { |component| code << component.javascript_initializer }
        code << "};"
        code << "jQuery('document').ready(initGuilded);"
      end
      code << "jQuery('body').trigger('guildedInitialized');"
      code << "\n//]]>\n</script>"
      code
    end

    def javascript?
     javascript_from_components? || javascript_from_data?
    end

    def javascript_from_components?
      components.any? { |component| component.javascript? }
    end

    def javascript_from_data?
      !data.empty?
    end

  end
end
