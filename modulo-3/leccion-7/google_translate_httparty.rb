require 'httparty'
class GoogleTranslate
  include HTTParty
  default_options.update(verify: false)
  base_uri "https://www.googleapis.com/language/translate/v2"
  format :json

  @@api_key = "AIzaSyBdqiJZunlGxiU5ubdmKlp2VqxqR7GYLsQ"
  
  default_params key: @@api_key

  attr_accessor :source, :target

  def initialize(source, target)
    @source = source
    @target = target
  end

  def translate(search)
    options = { query: {q: search, source:@source, target:@target}}
    response = self.class.get("", options)
    if response.success?
      response
    else
      raise response.response
    end
  end

  def detect(search)
    options = { query: {q: search}}
    response = self.class.get("/detect", options)
    if response.success?
      response
    else
      raise response.response
    end
  end

end

puts "Testing GoogleTranslate API"
google = GoogleTranslate.new("en", "es")
trans = "This is a really good party!"
puts "Tranducir: #{trans} \n\t---> #{google.translate(trans)['data']['translations'][0]['translatedText']}"

puts "Detectando idioma"
detection = google.detect(trans)
puts "Detectado: #{detection}"