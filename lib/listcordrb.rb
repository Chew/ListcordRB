# Require external gems
require 'json'
require 'rest-client'

# All ListCordRB functionality, whether extended or just here.
class ListCordRB
  # Initialize a new ListCord instance, via an api-key.
  # @param apikey [String] API Key of the bot, received from the ListCord API doc site.
  # @param id [Integer, String] Integer/String of your bot's id.
  def initialize(apikey, id)
    @api = apikey
    @id = id
    makestats
  end

  # Initialize Stats
  def makestats
    @stats = Stats.new(@api, @id)
  end

  # @return [String] the api key.
  attr_reader :api

  # @return [Integer] the ID.
  attr_reader :id

  # Change the api key of the bot.
  # @param key [String] the new api key.
  attr_writer :api

  # Change the ID of the bot.
  # @param id [Integer] the new ID.
  attr_writer :id

  # Load a bot.
  # @param id [Integer, String] Integer/String ID of the bot you're requesting.
  def loadbot(id)
    @bot = Bot.new(id)
  end

  # Find a bot.
  # Initialize the get bots
  # @param query [String] Name of the bot.
  # @param sort [String] Type of sort, can be votes, servers, newest, or invites, default votes.
  # @param limit [Integer] amount of bots to return. Max 10, default 1.
  # @param page [Integer] page of bots, takes limit and mulitplies by this.
  def getbots(query, sort = 'votes', limit = 1, page = 1)
    GetBots.new(query, sort, limit, page)
  end

  attr_reader :stats
  attr_reader :bot
end

# Require files
require 'listcordrb/bot'
require 'listcordrb/getbots'
require 'listcordrb/stats'
