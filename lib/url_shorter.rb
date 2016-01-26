require "url_shorter/version"
require 'net/http'
require 'uri'
require 'json'

module UrlShorter

  class UrlShorter

    attr_reader :short_url

    def initialize(api_key, long_url)
      @api_key = api_key
      @long_url = long_url
      self._create_short_url
    end

    def _create_short_url
      @short_url = self._request_api
    end

    def _request_api
      uri = URI.parse("https://www.googleapis.com/urlshortener/v1/url?key=#{@api_key}")

      https = Net::HTTP.new(uri.host, uri.port)
      https.use_ssl = true

      req = Net::HTTP::Post.new(uri.request_uri, initheader = {'Content-Type' => 'application/json'})
      req.body = {longUrl: @long_url}.to_json
      puts 'test'
      res = https.request(req)
      result = JSON.parse(res.body)
      result['id']
    end
  end
end
