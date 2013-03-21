module Guilded::Rails
  module ViewHelpers

    def jquery_include_tag( options={} )
      version = options.fetch( :version, '1.8.3' )
      min     = options.fetch( :min, true )

      "<script source=\"#{jquery_url( version, min )}\" type=\"text/javascript\" />"
    end

    def jquery_url( version, min )
      %w(development test cucumber).include?( Guilded.configuration.environment.to_s ) ?
        Guilded.configuration.local_jquery_name( version, min ) :
        Guilded.configuration.jquery_google_url( version )
    end

    def apply_guilded_behavior
      raw guilded.javascript_initializer
    end

  end
end
