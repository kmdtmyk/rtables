# frozen_string_literal: true

require 'slim'

module Rtables
  class Engine < ::Rails::Engine
    isolate_namespace Rtables
  end
end
