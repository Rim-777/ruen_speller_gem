module RuenSpeller

  class Answer

    attr_reader :request_value, :checked_values
    @@answers_buffer = Array.new

    def self.get_answers_buffer
      @@answers_buffer
    end

    def initialize(req_text, check_text)
      @request_value = req_text
      @checked_values = check_text
      @@answers_buffer << @request_value
    end

    def to_s
      "'#{@request_value}' : #{@checked_values}"
    end
  end
end