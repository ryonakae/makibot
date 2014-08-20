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