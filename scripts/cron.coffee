cron = require('cron').CronJob
random = require('hubot').Response::random


module.exports = (robot) ->
  robot.enter ->


  # おはよう真姫ちゃん
  makichan_ohayo = [
    '10時よ。なに、まだ寝てるの？ https://38.media.tumblr.com/75c64916c2cf8af09d8657d01b135007/tumblr_n3zemmmwNr1s4qvrdo1_500.gif'
    '10時よ。今日も一日頑張るぞい！ http://cl.ly/image/1p293Z1N271E/ganbaruzoi.png'
    '10時よ。ホラ、早く仕事しなさいよ https://31.media.tumblr.com/0869da3b285b1876ff606690cc45f1ed/tumblr_n3me8c9zxO1s4qvrdo1_500.gif'
    '10時だぞ https://38.media.tumblr.com/201ed1683790efc02a287cda4f206922/tumblr_mwq8oeFcxg1sq9yswo1_500.gif'
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
    '13時よ。お昼ご飯の時間ね https://38.media.tumblr.com/a6c3d292f804038bdb667592fcef2b6b/tumblr_n5s9at6EiD1r3fop8o1_500.gif'
    '13時よ。お昼ね https://38.media.tumblr.com/0dc84b9c4b2f96e9f01372afb734005d/tumblr_n5v7vrGF1D1tu5jpdo1_500.gif'
    '13時よ。はいこれ、カツサンドよッ https://38.media.tumblr.com/23fa7e15f595f4f3953ce9fb96a37acc/tumblr_n6i7xgUTgG1s74h99o1_500.gif'
    '13時よ。ヴェ、別にあなたのためにお知らせしてるわけじゃないんだからッ https://33.media.tumblr.com/f33f54bcefcda6cbb790e383e33cb172/tumblr_n65iv1xhfu1r0wlweo1_500.gif'
    '13時よ。トレッッッッビァァァァァァンヌッッ！ https://38.media.tumblr.com/fce335dd86ac1d303dafc923f34f1e02/tumblr_n5s664dSSh1s74h99o1_400.gif'
  ]
  new cron
    cronTime: '0 0 13 * * 1-5' #平日13時
    start: true
    timeZone: "Asia/Tokyo"
    onTick: ->
      say = random makichan_konnichiha
      room = {room: '#hubot-test'}
      robot.send room, say


  # こんばんは真姫ちゃん
  makichan_konbanha = [
    '19時よ。もう夜ね https://38.media.tumblr.com/a7d080b0582d16f016be54941cd683cb/tumblr_n3zq3fUgeK1s74h99o1_500.gif'
    '19時になったわ。まだ仕事してるの？ https://33.media.tumblr.com/8291d30f9ea679bec69a1b22a86e9911/tumblr_n3me69AlKA1tx3jwgo1_500.gif'
    '19時よ。もう外も暗くなってるわよ https://38.media.tumblr.com/4cd17fa2e896d4fa02c561957d48a701/tumblr_n65cniRqS91s4qvrdo1_500.gif'
    '19時よ。はい、焼き芋 https://38.media.tumblr.com/868156c2a2fb876b52adc0c1699ccebc/tumblr_n3zq3fUgeK1s74h99o2_500.gif'
    '19時になったわ。今日も1日お疲れさま♥ https://38.media.tumblr.com/d64ef9dbd740e87e9f4231303db694cf/tumblr_mz1jfzDAil1s4qvrdo1_500.gif'
    '19時になったわ。もう帰っていいかしら… http://33.media.tumblr.com/5b48117c64c15fd472c3f8ddd876ce84/tumblr_n6v03g6YbV1s74h99o1_500.gif'
  ]
  new cron
    cronTime: '0 0 19 * * 1-5' #平日19時
    start: true
    timeZone: "Asia/Tokyo"
    onTick: ->
      say = random makichan_konbanha
      room = {room: '#hubot-test'}
      robot.send room, say