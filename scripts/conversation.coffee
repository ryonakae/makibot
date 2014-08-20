# Description:
#   真姫ちゃんと会話できる
#
# Commands:
#   話しかけると返事する


## サンキュー真姫ちゃん
thankyou_makichan = [
  "どういたしまして♥ https://38.media.tumblr.com/d64ef9dbd740e87e9f4231303db694cf/tumblr_mz1jfzDAil1s4qvrdo1_500.gif"
  "ヴェ、別にあなたのためにやったんじゃないんだから！ https://33.media.tumblr.com/f33f54bcefcda6cbb790e383e33cb172/tumblr_n65iv1xhfu1r0wlweo1_500.gif"
  "しっかりしなさいよ、もう"
  "ハイちゅんちゅん(・8・)"
  "がんばれ♥がんばれ♥"
  "オケオケオッケ〜〜✨"
]
module.exports = (robot) ->
  words = /(真姫ちゃん|真姫ちゃん、|まきちゃん|まきちゃん、|真姫|真姫、|まき|まき、)ありがと|サンキュー(マッキ|サンキュー真姫ちゃん)|ありがとう(真姫ちゃん|、真姫ちゃん|まきちゃん|、まきちゃん|まき|、まき|真姫|、真姫)/
  robot.hear words, (msg) ->
    msg.send msg.random thankyou_makichan


## 今日も1日
ganbaruzoi = [
  "がんばるぞい！ https://pbs.twimg.com/media/BspTawrCEAAwQnP.jpg"
  "何わけの分からないこと言ってんのよ(呆れ) https://38.media.tumblr.com/165a30349ef61d1aa7a32379ca8adf5d/tumblr_n6v07gFuVm1tu5jpdo1_400.gif"
]
module.exports = (robot) ->
  words = /(今日|きょう)も(1日|一日|いちにち)/
  robot.hear words, (msg) ->
    msg.send msg.random ganbaruzoi


## やんやん
module.exports = (robot) ->
  words = /やんやん/
  robot.hear words, (msg) ->
    msg.send 'やんやんっ😖遅れそうです😩🌀 たいへん駅🚉までダッシュ！🏃💨 初めてのデート💑ごめん🙇で登場？やんやん😥そんなのだめよ🙅たいへん😰電車よいそげ🙏♥︎不安な気持ち😔がすっぱい😖ぶる~べりぃ💜とれいん💖 https://38.media.tumblr.com/54dedb31896f0d38bd0a3b00dcf05f01/tumblr_n7dd4e8v621s4qvrdo1_500.gif'