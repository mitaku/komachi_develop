#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

require 'pry'

KomachiDevelop::PryExtension = Pry::CommandSet.new
command_glob = File.expand_path('../pry-extension/*.rb', __FILE__)

Dir[command_glob].each do |command|
  require command
end

Pry.commands.import KomachiDevelop::PryExtension
