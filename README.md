### Simple Ruby gem for verifying the spelling of English words
### Dependencies:
- ActiveSupport 4.2
- Enough courage
##### Usage:
 ```shell
  pp RuenSpeller.correct?("love")#=> true
  pp RuenSpeller.correct?("leve")#=> ["lee", "live", "love", "lave", "level"]
  RuenSpeller.correct?("leve").request_value #=> 'leve'
  RuenSpeller.correct?("leve").checked_values #=> ["lee", "live", "love", "lave", "level"]
  ```

### License
The software is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
  

