# Upwork Services Info API – Ruby example (stdlib only)
# Usage: PILOTERR_API_KEY=your-key ruby services_info.rb
require "json"
require "net/http"
require "uri"

uri = URI("https://api.piloterr.com/v2/upwork/services/info")
uri.query = URI.encode_www_form('query' => 'https://www.upwork.com/services/product/development-it-mobile-app-developer-android-ios-flutter-application-hybrid-apps-1403673770703212544')

request = Net::HTTP::Get.new(uri)
request["x-api-key"] = ENV.fetch("PILOTERR_API_KEY")

response = Net::HTTP.start(uri.host, uri.port, use_ssl: true, read_timeout: 120) do |http|
  http.request(request)
end

abort "Piloterr error #{response.code}: #{response.body}" unless response.is_a?(Net::HTTPSuccess)

puts JSON.pretty_generate(JSON.parse(response.body))
