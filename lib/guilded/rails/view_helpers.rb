module Guilded::Rails
  module ViewHelpers

    def jquery_include_tag( options={} )
      version = options.fetch( :version, Guilded.configuration.jquery_version )
      min     = options.fetch( :min, false )

      raw "<script src=\"#{jquery_url( version, min )}\" type=\"text/javascript\"></script>"
    end

    def jquery_url( version, min )
      %w(development test cucumber).include?( Guilded.configuration.environment.to_s ) ?
        Guilded.configuration.local_jquery_name( version, min ) :
        Guilded.configuration.jquery_google_url( version )
    end

    def mootools_include_tag( options={} )
      version = options.fetch( :version, Guilded.configuration.mootools_version )
      min     = options.fetch( :min, false )

      raw "<script src=\"#{mootools_url( version, min )}\" type=\"text/javascript\"></script>"
    end

    def mootools_url( version, min )
      %w(development test cucumber).include?( Guilded.configuration.environment.to_s ) ?
        Guilded.configuration.local_mootools_name( version, min ) :
        Guilded.configuration.mootools_google_url( version )
    end

    def apply_guilded_behavior
      raw guilded.javascript_initializer
    end

  end
end
