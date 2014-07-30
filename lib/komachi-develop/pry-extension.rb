require 'pry-rails'
require 'pry-rescue'
require 'pry-stack_explorer'

KomachiDevelop::PryExtension = Pry::CommandSet.new
command_glob = File.expand_path('../pry-extension/*.rb', __FILE__)

Dir[command_glob].each do |command|
  require command
end

Pry.commands.import KomachiDevelop::PryExtension
