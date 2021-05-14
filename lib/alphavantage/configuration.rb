module Alphavantage
  class << self
    def configuration
      @configuration ||= Configuration.new
    end

    def configure
      yield(configuration)
    end
  end

  class Configuration
    attr_reader :api_keys

    def api_keys=(other)
      @api_keys = Array(other)
    end
  end
end