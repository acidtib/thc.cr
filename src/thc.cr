require "clim"
require "./thc/*"

module Thc
  # TODO: setup redis connection
end

Thc::Cli.start(ARGV)