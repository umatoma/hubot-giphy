# Description
#   A hubot script that searching gif
#
# Configuration:
#   LIST_OF_ENV_VARS_TO_SET
#
# Commands:
#   hubot gif me <query> - get a gif url at random
#   hubot gif s|search <query> - search gifs by query

giphy = require('giphy-api')();

module.exports = (robot) ->
  robot.respond /gif me (.+)/, (msg) ->
    tag = msg.match[1]
    giphy.random tag, (err, res) ->
      if err
        robot.logger.error err
        msg.send err.message
      else
        robot.logger.debug res
        msg.send res.data.image_url

  robot.respond /gif (?:s|search) (.+)/, (msg) ->
    query = msg.match[1]
    option =
      q: query
      limit: 5
    giphy.search option, (err, res) ->
      if err
        robot.logger.error err
        msg.send err.message
      else
        robot.logger.debug res
        urls = res.data.map (item) -> item.images.original.url
        msg.send "【#{query}】gifs\n#{urls.join('\n')}"