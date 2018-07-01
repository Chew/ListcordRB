# Find information about bots.
class ListCordRB::Bot
  # Initialize the bot
  # @param id [Integer, String] Integer/String ID of bot you're requesting.
  def initialize(id)
    url = "https://listcord.com/api/bot/#{id}"
    @data = JSON.parse(RestClient.get(url))
  end

  # @return data in raw json form.
  attr_reader :data

  alias to_s data

  # Return the error message if there is one, nil otherwise.
  # @return [String, nil] the error message.
  def error
    @data['message']
  end

  # Return true if there is an error, false otherwise.
  # @return [true, false] if there is an error.
  def error?
    !@data['message'].nil?
  end

  # The custom bot invite url of the bot.
  # @return [String] the bot's invite link.
  def invite
    @data['invite']
  end

  # The website url of the bot.
  # @return [String] the bot's website link.
  def website
    @data['website']
  end

  # The description of the bot.
  # @return [String] the bot's Description.
  def description
    @data['description']
  end

  # Get the bot's ID.
  # @return [Integer] the bot's id.
  def id
    @data['id'].to_i
  end

  alias clientid id

  # The avatar hash of the bot's avatar.
  # @return [String] the bot's avatar.
  def avatar
    @data['avatar']
  end

  # Get's the bot's avatar as an img, ready to be used in image linking.
  # @return [String] the bot's avatar image url.
  def avatar_img
    "https://cdn.discordapp.com/avatars/#{id}/#{avatar}.webp?size=1024"
  end

  # The discriminator of the bot.
  # @return [Integer] the bot's discriminator without the #.
  def discriminator
    @data['discriminator'].to_i
  end

  alias discrim discriminator
  alias tag discriminator

  # The username of the bot.
  # @return [String] the bot's username.
  def username
    @data['username']
  end

  # Returns the bot's distinct, which is the Username and Discriminator.
  # @return [String] the bot's distinct.
  def distinct
    "#{username}\##{tag}"
  end

  # The support server invite code of the bot.
  # @return [String] the bot's support server code.
  def support
    @data['support']
  end

  # The bot's support server link, ready for clicking.
  # @return [String] the bot's support server link.
  def support_link
    "https://discord.gg/#{support}"
  end

  # Get the bot's server count
  # @return [Integer] the bot's server count.
  def servers
    @data['servers'].to_i
  end

  alias guilds servers
  alias guild servers
  alias server servers

  # The amount of upvotes the bot has.
  # @return [Integer] the bot's total votes.
  def votes
    @data['votes'].to_i
  end

  # The certified status of the bot.
  # @return [true, false] the bot's certified status.
  def premium?
    @data['premium']
  end

  alias premium premium?

  # The owners of the bot. First one in the array is the main owner.
  # @return [Array<String>] the bot's owners in an array.
  def owners
    @data['owners']
  end
end
