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

  # Load a bot.
  # @param id [Integer, String] Integer/String ID of the bot you're requesting.
  def loadbot(id)
    @bot = Bot.new(id)
  end

  attr_reader :stats
  attr_reader :bot
end

# Require files
require 'listcordrb/stats'
require 'listcordrb/bot'
