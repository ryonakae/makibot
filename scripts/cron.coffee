cron = require('cron').CronJob

module.exports = (robot) ->
  robot.enter ->
  new cron
    # cronTime: '0 0 10 * * 1-5' 平日毎朝10時
    # cronTime: '0 0 */2 * * *' 2時間おき
    cronTime: '0 */1 * * * *' 1分おき
    start: true
    timeZone: "Asia/Tokyo"
    onTick: ->
      robot.send {room: '#hubot-test'}, 'cronのテストよ'

###
module.exports = (robot) ->
  makichan = [
    'おはよっ。なに、まだ寝てるの？お寝坊さんなんだから'
    '今日も一日頑張るぞい！'
    '10時よ。ホラ、早く仕事しなさいよ'
    '10時よ。ｲﾐﾜｶﾝﾅｲ!'
  ]

  new cron '0 0 10 * * 1-5', () ->
    user = {room: '#hubot-test'}
    say = random makichan
    robot.send user, say
  , null, true
###