# Stats and stuff, ya know.
class ListCordRB::GetBots
  # Initialize the get bots
  # @param query [String] Name of the bot.
  # @param sort [String] Type of sort, can be votes, servers, newest, or invites, default votes.
  # @param limit [Integer] amount of bots to return. Max 10, default 1.
  # @param page [Integer] page of bots, takes limit and mulitplies by this.
  def initialize(query, sort = 'votes', limit = 1, page = 1)
    @query = query
    @sort = sort
    @limit = limit
    @page = page
    url = "https://listcord.com/api/bots/#{sort}/#{limit}/#{page * limit - 1}"
    @data = JSON.parse(RestClient.get(url, params: { q: query }))
  end

  # @return data in raw json form.
  attr_reader :data

  alias to_s data

  # @return the original query.
  attr_reader :query

  # @return the original sort method.
  attr_reader :sort

  # @return the original limit.
  attr_reader :limit

  # @return the original page.
  attr_reader :page

  # Go to the next page of bots
  def next
    ListCordRB::GetBots.new(@query, @sort, @limit, @page + 1)
  end

  # @return [Integer] the ID of the first bot
  def first
    @data[0].to_i
  end
end
