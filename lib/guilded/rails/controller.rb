module Guilded::Rails
  module Controller

    def self.included( base )
      base.instance_eval do
        attr_reader :guilded
        helper_method :guilded
        before_filter :initialize_guilded
      end

      base.send :include, InstanceMethods
    end

    module InstanceMethods

      def initialize_guilded
        @guilded = Guilded::Guilder.new
      end

    end

  end
end
