#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

require 'rails'

class KomachiDevelop::Railtie < ::Rails::Railtie
  initializer "komachi_develop_railtie.quiet_assets" do
    require 'komachi-develop/quiet_assets'
  end
end
