cron = require('cron').CronJob

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