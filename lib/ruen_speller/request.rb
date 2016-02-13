require_relative 'all_requires'

module RuenSpeller

  class Request

    @@questions_buffer = Array.new

    def self.get_questions_buffer
      return @@questions_buffer
    end

    attr_reader :request_string

    def initialize data

      if data.blank?
        raise IncorrectDataError
      elsif data.split("").include?(" ")
        @@questions_buffer = data.split(" ")
        data = @@questions_buffer.join("+")
      else
        @@questions_buffer << data
      end

      @request_string = "#{data}"

    end

    def to_s
      "#{@request_string}"
    end
  end
end