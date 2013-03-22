require "guilded/engine"
require "guilded/version"

module Guilded

  autoload :Component,     'guilded/component'
  autoload :Configuration, 'guilded/configuration'
  autoload :Data,          'guilded/data'
  autoload :Guilder,       'guilded/guilder'
  autoload :Rails,         'guilded/rails'

  def self.configuration
    @configuration ||= Guilded::Configuration.new
  end

  def self.configure
    yield( configuration ) if block_given?
  end

end

ActionView::Base.send( :include, Guilded::Rails::ViewHelpers ) if defined?( ActionView )
ActionController::Base.send( :include, Guilded::Rails::Controller ) if defined?( ActionController::Base )
