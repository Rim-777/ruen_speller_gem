Gem::Specification.new do |spec|
  spec.name            = 'ruen_speller'
  spec.version         = '1.0.1'
  spec.date            = '2015-07-07'
  spec.summary         = 'Сheck the spelling of your text'
  spec.authors         = ["Timo Moss"]
  spec.description     =<<ruen_speller_description
This simple gem I've done in training.
It checking the spelling English or Russian text wiht tech.yandex.ru/speller site.
examples:
puts RuenSpeller.correct?("love")#=> true
puts RuenSpeller.correct?("leve")#=> ["lee", "live", "love", "lave", "level"]
RuenSpeller.correct?("leve").request_value #=> 'leve'
RuenSpeller.correct?("leve").checked_values #=> ["lee", "live", "love", "lave", "level"]
The default method sends GET-request. If you need a POST-request, just drop the last argument - true.
Example: RuenSpeller.correct?("Love", true)
ruen_speller_description

  spec.email           = 'javatimomoss@gmail.com'
  spec.homepage        = 'http://rubygems.org/gem/speller'
  spec.license         = 'MIT'

  spec.files           = [
      "lib/ruen_speller.rb",
      "lib/ruen_speller/all_requires.rb",
      "lib/ruen_speller/answer.rb",
      "lib/ruen_speller/controller.rb",
      "lib/ruen_speller/data.rb",
      "lib/ruen_speller/http_requests.rb",
      "lib/ruen_speller/request.rb",
  ]

  spec.add_runtime_dependency 'activesupport', '~> 4.2'

  spec.requirements = %w{
  Internet\ connection
  Enough\ courage\ to\ use\ it
  }

  end