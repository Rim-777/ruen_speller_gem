require_relative 'ruen_speller/all_requires'

module RuenSpeller

  ERRORS_CLASSES = [:IncorrectDataError, :PermissibleNumberError]
  ERRORS_CLASSES.each { |err| const_set err, Class.new(StandardError) }

  def self.correct?(*text)
    raise (PermissibleNumberError) if text.join('').split('').size > 10000
    Array.wrap(Controller.new.check_text(text))
  rescue IncorrectDataError
  end

end

