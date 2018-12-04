module Sage
  class Client

    def response(url = nil)
      @response ||= Sage::Request.new(url).response
    end

  end
end
