module MagicEightBall
  class EightBall
    attr_reader :introductions

    def initialize(responder, intros)
      @introductions = intros
      @responder = responder
    end

    def greet_user
      len = @introductions.length
      @introductions[Random.rand(len - 1)]
    end

    def give_advice
      @responder.generate_response
    end
  end
end