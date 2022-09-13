require 'faraday'
require 'faraday_middleware'

module SportsIo
  class Client
    BASE_URL = " https://api.sportsdata.io/v3/"
    attr_reader :api_key, :adapter

    def initialize(api_key:, adapter: Faraday.default_adapter)
      @api_key = api_key
      @adapter = adapter
    end

    def connection
      @connection ||= Faraday.new do |conn|
        conn.url_prefix = BASE_URL
        conn.request :json
        conn.response :json, content_type: /\bjson$/
        conn.adapter adapter
      end
    end

    def inspect
      "#<SportsIo::Client>"
    end
  end
end