# Stats and stuff, ya know.
class ListCordRB::Stats
  # Initialize the stats
  # Program does this automatically when running DBLRuby.new.
  def initialize(apikey, id)
    @api = apikey
    @id = id
  end

  # Get the server count, returns an int.
  def servers
    url = "http://listcord.com/api/bot/#{@id}"
    JSON.parse(RestClient.get(url))['servers'].to_i
  end

  alias servercount servers

  def servers=(count)
    url = "http://listcord.com/api/bot/#{@id}/guilds"
    json = '{"guilds":' + count.to_i + '}'
    RestClient.post(url, json, :Authorization => @api, :'Content-Type' => :json)
  end

  alias updateservers servers=
end
