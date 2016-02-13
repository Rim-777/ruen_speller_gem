require_relative 'all_requires'

module RuenSpeller

  module HttpRequests

    def send_request(request_text, request_is_post = false)

      request_arguments = prepare(request_text).request_string

      if request_is_post
        uri = URI(URI.encode(Data::DATA_URL))
        Net::HTTP.post_form(uri, {"text" => "#{request_arguments}"}).body
      else
        Net::HTTP.get URI(URI.encode(Data::DATA_URL+"?text=#{request_arguments}"))
      end

    end

    private
    def prepare(data)

      if data.length == 1
        Request.new(data.first)
      elsif data.length > 1
        Request.new(data.join(" "))
      elsif data.empty?
        Request.new data
      end

    end
  end

end





