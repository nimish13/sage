require 'net/http'
require 'uri'

module Sage
  class Request

    attr_reader :url

    def initialize(url = nil)
      @url = url || default_url
    end

    def response
      http.request(request)
    end

    private def uri
      URI(url)
    end

    private def default_url
      'https://www.promoplace.com/ws/ws.dll/XMLDataStream'
    end

    private def request
      request = Net::HTTP::Post.new(uri.request_uri)
      request.body = '<XMLDataStreamRequest><Ver>3.2</Ver><Auth><AcctID>*****</AcctID><LoginID>*****</LoginID><Password>****</Password></Auth><Search><SPC>S:50042</SPC><Qty>3000</Qty><ExtraReturnFields>Category, SuppID, ItemNum, colors</ExtraReturnFields><MaxTotalItems>2500</MaxTotalItems></Search></XMLDataStreamRequest>'
      request
    end

    private def http
      @http ||= Net::HTTP.new(uri.host, uri.port)
      @http.use_ssl = use_ssl?
      @http
    end

    private def use_ssl?
      true
    end
  end

end
