class GoogleTranslate
  include HTTParty
  default_options.update(verify: false)
  base_uri "https://www.googleapis.com/language/translate/v2"
  format :json

  @@api_key = "AIzaSyBdqiJZunlGxiU5ubdmKlp2VqxqR7GYLsQ"

  default_params key: @@api_key

  attr_accessor :source, :target, :text

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

  def self.detect(target_language)
    options = { query: {q: target_language}}
    response = get("/detect", options)
    if response.success?
      response
    else
      raise response.response
    end
  end

  def self.languages(target)
    options = { query: {target: target}}
    response = get("/languages", options)
    if response.success?
      response
    else
      raise response.response
    end
  end

end
