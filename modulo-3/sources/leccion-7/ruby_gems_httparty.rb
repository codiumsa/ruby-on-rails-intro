require 'httparty'
class RemoteGem
  include HTTParty

  base_uri "rubygems.org/api/v1"
  default_options.update(verify: false)

  attr_accessor :name, :info, :version, :authors, :downloads

  def initialize(name, info, version, authors, downloads)
    self.name = name
    self.info = info
    self.version = version
    self.authors = authors
    self.downloads = downloads
  end

  # Returns the versions for this particular RemoteGem
  def versions
    response = self.class.get("/versions/#{name}.json")
    if response.success?
      response
    else
      raise response.response
    end
  end

  # Find a particular gem, based on its name
  def self.find(name)
    response = get("/gems/#{name}.json")
    if response.success?
      self.new(response["name"], response["info"],
               response["version"], response["authors"],
               response["downloads"])
    else
      # this just raises the net/http response that was raised
      raise response.response
    end
  end
end

httparty = RemoteGem.find("httparty")
puts httparty
puts httparty.versions


#httparty.versions.each{ |e| puts "Created at: #{Date.parse(e["created_at"]).strftime("%d-%m-%Y %I:%M:%p")} by #{e["authors"]}"}
