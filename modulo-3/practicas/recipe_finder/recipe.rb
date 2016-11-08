require 'httparty'

class Recipe
  include HTTParty

  base_uri "http://food2fork.com/api"
  default_params key: "4c2e359020d616d50a5e070b6cfb0418"
  format :json

  def self.for (keyword)
    get("/search", query: {q: keyword})["recipes"]
  end
end

puts Recipe.for('chicken')
