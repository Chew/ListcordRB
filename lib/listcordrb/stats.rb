# Stats and stuff, ya know.
class ListCordRB::Stats
  # Initialize the stats
  # Program does this automatically when running DBLRuby.new.
  def initialize(apikey, id)
    @api = apikey
    @id = id
  end

  # Get the server count, returns an int.
  def getservercount
    url = "http://listcord.com/api/bot/#{@id}"
    JSON.parse(RestClient.get(url))['servers'].to_i
  end
end
