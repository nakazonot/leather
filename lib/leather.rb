require 'devise'
require 'bootstrap-sass'
require 'high_voltage'
require 'haml-rails'

module Leather
  autoload :LeatherHelpers, "leather/leather_helpers"

  class Engine < ::Rails::Engine
    initializer "leather.helpers" do
      ActionView::Base.send :include, Leather::LeatherHelpers
    end
  end
end
