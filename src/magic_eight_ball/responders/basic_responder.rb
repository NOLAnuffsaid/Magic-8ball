module MagicEightBall
  module Responder
    class BasicResponder < BaseResponder
      attr_reader :responses, :count

      def initialize(answers)
        @responses = answers
        @count = @responses.length
      end

      def generate_response
        @responses[Random.rand(@count - 1)]
      end
    end
  end
end