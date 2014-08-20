## 今日も1日
ganbaruzoi = [
  "がんばるぞい！ https://pbs.twimg.com/media/BspTawrCEAAwQnP.jpg"
  "何わけの分からないこと言ってんのよ(呆れ) https://38.media.tumblr.com/165a30349ef61d1aa7a32379ca8adf5d/tumblr_n6v07gFuVm1tu5jpdo1_400.gif"
]
module.exports = (robot) ->
  words = /(今日|きょう)も(1日|一日|いちにち)/
  robot.hear words, (msg) ->
    msg.send msg.random ganbaruzoi