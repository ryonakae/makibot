# 4sqで店検索するぞい
parser = require('xml2json')
async = require('async')
random = require('hubot').Response::random

module.exports = (robot) ->
  robot.respond /(.*)(が|を|に)(食べたい|食いたい|行きたい|いきたい|)?$/i, (msg) ->
  # robot.respond /(.*)(食べたい|食いたい|行きたい|いきたい)?$/i, (msg) ->
    food = '寿司'
    food  = msg.match[1] if msg.match[1]?

    client_id = 'CMQ4XMJ2ZOGDDDXSIWBY3UXQG5HSOP40JL5IPOW15MFJ0JS2'
    client_secret = 'DYTOGNOVCVNQJAYRGV0VEKRUVQIZ0LFNNX2Z0E33M2JFAVPA'
    location = '35.658252,139.696243'
    radius = '800'

    query =
    'client_id=' + client_id +
    '&client_secret=' + client_secret +
    '&v=20130815' +
    '&ll=' + location +
    '&radius=' + radius +
    '&query=' + food

    async.waterfall([
      (callback) ->
        msg
          .http('https://api.foursquare.com/v2/venues/search'+'?'+query)
          .get() (err, res, body) ->
            json = JSON.parse(body)
            callback(null, json)
    ], (err, result) ->
      throw new Error('err catched.') if err

      length = result.response.venues.length
      num = Math.floor( Math.random() * length+1 )

      text =
      "会社から#{radius}m以内にある#{food}の検索結果よ。\n"+
      "「#{result.response.venues[num].name}」なんてどうかしら。\n"+
      "会社からだいたい#{result.response.venues[num].location.distance}mよ。\n" +
      "詳しい情報はURLを参照しなさいよねっ。\n\n" +
      "[PC] " +
      "https://foursquare.com/venue/#{result.response.venues[num].id}\n"+
      "[SP] " +
      "foursquare://venues/#{result.response.venues[num].id}"
      ###
      # いずれ使いそうなエラーメッセージ
      text =
      "うまく探せなかったわ、ごめんなさい…。\n"+
      "もう一度聞いてくれたら今度は見つけられるかも知れないわ。"
      ###

      msg.send text
    )