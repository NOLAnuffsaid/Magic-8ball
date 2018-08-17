module MagicEightBall
  class Interstitial
    attr_reader :message

    def initialize(msg = "...Thinking...")
      @message = msg
    end

    def show_waiting_message
      puts @message
    end
  end
end