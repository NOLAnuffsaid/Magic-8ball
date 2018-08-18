require_relative './responders/base_responder'
require_relative './responders/basic_responder'

module MagicEightBall
  module Responder
    def self.choose_rand_responder(field)
      responders = constants
      responders_len = responders.length
      rand_index = Random.rand(responders_len - 1)
      responder = responders.reject { |r| r == :BaseResponder }[rand_index]

      MagicEightBall::Responder.const_get(responder).new(field.items)
    end
  end
end