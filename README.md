# ruen_speller_gem
 It's a simple stone, which I wrote in the summer of 2015, as well as a warm-up)))
 It checking the spelling English or Russian text wiht tech.yandex.ru/speller site.
  examples:
  puts RuenSpeller.correct?("love")#=> true
  puts RuenSpeller.correct?("leve")#=> ["lee", "live", "love", "lave", "level"]
  RuenSpeller.correct?("leve").request_value #=> 'leve'
  RuenSpeller.correct?("leve").checked_values #=> ["lee", "live", "love", "lave", "level"]
  The default method sends GET-request. If you need a POST-request, just drop the last argument - true.
  Example: RuenSpeller.correct?("Love", true)
  
  be happy))
      Timo
