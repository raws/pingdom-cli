require "httparty"
require "pingdom/version"

module Pingdom
  class API
    include HTTParty
    base_uri "https://api.pingdom.com/api/2.0"

    def initialize(username, password)
      @username, @password = username, password
    end

    def probes
      self.class.get "/probes", headers: headers, basic_auth: basic_auth
    end

    private

    def basic_auth
      { username: @username, password: @password }
    end

    def headers
      { "App-Key" => Pingdom::APP_KEY }
    end
  end
end
