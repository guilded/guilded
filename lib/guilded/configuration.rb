module Guilded
  class Configuration

    attr_accessor :environment,
                  :jquery_google_url_template,
                  :jquery_version

    def initialize
      set_defaults
    end

    def jquery_google_url( version )
      jquery_google_url_template.gsub /\{\{version\}\}/, version
    end

    def local_jquery_name( version, min )
      "/assets/jquery-#{version}#{min ? '.min' : ''}.js"
    end

  private

    def set_defaults
      @jquery_google_url_template = "https://ajax.googleapis.com/ajax/libs/jquery/{{version}}/jquery.min.js"
    end

  end
end
