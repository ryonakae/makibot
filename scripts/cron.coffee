cron = require('cron').CronJob
random = require('hubot').Response::random


module.exports = (robot) ->
  robot.enter ->


  # おはよう真姫ちゃん
  makichan_ohayo = [
    '10時よ、おはよっ。なに、まだ寝てるの？もう、お寝坊さんなんだから https://38.media.tumblr.com/75c64916c2cf8af09d8657d01b135007/tumblr_n3zemmmwNr1s4qvrdo1_500.gif'
    '10時よ、おはよう。今日も一日頑張るぞい！ http://cl.ly/image/1p293Z1N271E/ganbaruzoi.png'
    '10時よ、おはよう。ホラ、早く仕事しなさいよ https://31.media.tumblr.com/0869da3b285b1876ff606690cc45f1ed/tumblr_n3me8c9zxO1s4qvrdo1_500.gif'
    '10時よ、おはよう。ｳﾞｪｪ!?'
    '10時よ、おはよっ https://38.media.tumblr.com/201ed1683790efc02a287cda4f206922/tumblr_mwq8oeFcxg1sq9yswo1_500.gif'
  ]
  new cron
    cronTime: '0 0 10 * * 1-5' #平日10時
    # cronTime: '*/10 * * * * *' #10秒おき
    start: true
    timeZone: "Asia/Tokyo"
    onTick: ->
      say = random makichan_ohayo
      room = {room: '#hubot-test'}
      robot.send room, say


  # こんにちは真姫ちゃん
  makichan_konnichiha = [
    '13時よ、お昼ごはんの時間よ https://38.media.tumblr.com/a6c3d292f804038bdb667592fcef2b6b/tumblr_n5s9at6EiD1r3fop8o1_500.gif'
    '13時よ、お昼ごはんの時間ね。今日は何を食べるの？'
    '13時よ、お昼ごはんの時間ね。私、天一のこってりが食べたい http://cl.ly/image/0v0Y230z3L46/2013082402.jpg'
    '13時よ、お昼ごはんの時間ね https://38.media.tumblr.com/0dc84b9c4b2f96e9f01372afb734005d/tumblr_n5v7vrGF1D1tu5jpdo1_500.gif'
  ]
  new cron
    cronTime: '0 0 13 * * 1-5' #平日13時
    start: true
    timeZone: "Asia/Tokyo"
    onTick: ->
      say = random makichan_konnichiha
      room = {room: '#hubot-test'}
      robot.send room, say