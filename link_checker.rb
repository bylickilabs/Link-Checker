require 'net/http'
require 'uri'

# Liest URLs aus Datei
def read_urls(file)
  File.readlines(file).map(&:strip).reject(&:empty?)
end

# Prüft den HTTP-Status der URL
def check_url(url)
  uri = URI.parse(url)
  response = nil

  begin
    Net::HTTP.start(uri.host, uri.port, use_ssl: uri.scheme == "https", open_timeout: 5) do |http|
      response = http.head(uri.request_uri)
    end
    [url, response.code.to_i, response.message]
  rescue => e
    [url, nil, "Fehler: #{e.message}"]
  end
end

# Hauptprogramm
urls = read_urls('urls.txt')

puts "🔎 URL-Status Check gestartet...\n\n"

urls.each do |url|
  url, code, message = check_url(url)
  if code && code.between?(200,399)
    puts "✅ [#{code}] #{url} → #{message}"
  else
    puts "❌ #{url} → #{message || 'Kein Statuscode'}"
  end
end

puts "\n✔️ Prüfung abgeschlossen!"

File.open('log.txt', 'w') do |file|
  urls.each do |url|
    url, code, message = check_url(url)
    output = if code && code.between?(200,399)
      "✅ [#{code}] #{url} → #{message}"
    else
      "❌ #{url} → #{message || 'Kein Statuscode'}"
    end
    puts output
    file.puts(output)
  end
end

puts "\n✔️ Prüfung abgeschlossen! Log-Datei erstellt."
