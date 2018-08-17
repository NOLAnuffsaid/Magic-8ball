module MagicEightBall
  module Responder

    # Responder Interface
    #
    # Will represent a responder that will produce
    # random answers.
    class BaseResponder
      def generate_response
        throw NotImplementedError, "Class must implement #get_response method."
      end
    end
  end
end