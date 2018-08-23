# Listcord has been shut down, no idea why, I think it was because the mods were garbage, whoops. Anyway, this is dead now, thanks for stopping by!

# ListCordRB

A ruby library for the ListCord discord bot list.

## What is this for?

I mean, why not.

## Installation

Like a normal gem, run `gem install listcordrb`!

For Gemfiles, just `gem 'listcordrb'`! Simple!

## Usage

Put this near the top of your ruby bot:

```ruby
require 'listcordrb'

LC = ListCordRB.new(api_key, bot_id)
```

Now, when you need to run a method, run DBL.method.

Example for getting server count.

```ruby
bot.command(:servercount) do |event|
  event.respond "I am on #{LC.stats.servers} servers!"
end
```

Assuming the server count is 100, the output after running `servercount` would be:

"I am on 100 servers!"
