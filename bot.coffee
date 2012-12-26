fatbot = require 'fatbot'

bot = new fatbot.Bot
  server:   '192.168.0.202',
  nick:   'fatyouth',
  channels: ['#fatbot'] # On reste là tant qu'on est en période de test :)

# Listen to Bot events

bot.on 'user:join', (r) ->
  r.reply "Welcome to #{r.channel}, #{r.nick} !"

# Using newly created extensions

bot.hear /hello/, (r) ->
  r.reply "Hello #{r.nick} !"

bot.hear /bye/, (r) ->
  r.reply "Good bye #{r.nick}"

bot.connect()