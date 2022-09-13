# frozen_string_literal: true

require_relative "sports_io/version"

module SportsIo
  autoload :Client, "sports_io/client"
  autoload :Error, "sports_io/error"
end
