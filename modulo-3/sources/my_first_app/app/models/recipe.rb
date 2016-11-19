require 'HTTParty'
class Recipe
  include HTTParty

  base_uri "http://food2fork.com/api"
  default_params key: "4c2e359020d616d50a5e070b6cfb0418"
  format :json
  #{"publisher"=>"Picky Palate", "f2f_url"=>"http://food2fork.com/view/484d98", "title"=>"Crock Pot Pesto Ranch Chicken Thighs", "source_url"=>"http://picky-palate.com/2012/09/20/pesto-ranch-crock-pot-chicken-thighs/", "recipe_id"=>"484d98", "image_url"=>"http://static.food2fork.com/CrockPotPestoRanchChickenThighs1text1300x248ca0b.jpg", "social_rank"=>99.99999999941502, "publisher_url"=>"http://picky-palate.com"}


  def self.for (keyword)
    get("/search", query: {q: keyword})["recipes"]
  end
end
