module SaasPulse
  BASE_URI = "http://sdr.saaspulse.com/pixel.gif/?sdr_s=".freeze unless self.const_defined?(:BASE_URI)

  class << self
    attr_reader :client

    def srv_id(srv_id)
      @client = Client.new(srv_id)
    end
  end

  class Client
    def initialize(srv_id)
      @srv_id = srv_id
    end

    def track(data={})
      open(build_url(data))
    end

    def build_url(data)
      [BASE_URI, @srv_id, "&", ArgParser.parse(data).to_params].join
    end
  end
end

