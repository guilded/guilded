$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'guilded/component_def'
require 'guilded/guilder'
require 'guilded/exceptions'
require 'guilded/rails/view_helpers'

module Guilded
  VERSION = '0.0.5'
end

ActionView::Base.send( :include, Guilded::Rails::ViewHelpers ) if defined?( ActionView )