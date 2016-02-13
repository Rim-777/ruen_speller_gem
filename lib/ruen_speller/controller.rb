require_relative 'all_requires'

module RuenSpeller

  class Controller

    include HttpRequests

    def check_text(text_to_check)

      data_validate(text_to_check)
      @answers = json_parse! send_request(text_to_check, set_request_type(text_to_check))

      if all_correct?
        true
      else
        @answers
      end

    end

    private
    def json_parse!(data)
      JSON.parse(data).map! do |record|
        record["s"] = ["unrecognized"] if record["s"].empty?
        Answer.new(record["word"], record["s"])
      end
    end

    def all_correct?
      unless Request.get_questions_buffer.empty?
        Answer.get_answers_buffer.empty?
      end
    end

    def data_validate data
      data.map! do |entry|
        unless entry.kind_of?(String)
          unless entry.kind_of?(TrueClass || FalseClass)
            entry.consta
          else
            entry
          end
        else
          entry
        end
      end
    end

    def set_request_type data
      data.last == true ? true : false
    end

  end

end