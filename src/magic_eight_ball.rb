require_relative './magic_eight_ball/eight_ball'
require_relative './magic_eight_ball/interstitial'
require_relative './magic_eight_ball/reader'
require_relative './magic_eight_ball/responder'

module MagicEightBall
  puts "Welcome to the Magic 8ball!!!"

  interstitial = MagicEightBall::Interstitial.new
  questions = MagicEightBall::Reader.new
  answers = MagicEightBall::Reader.new('answers')
  responder = MagicEightBall::Responder::BasicResponder.new(answers.items)
  eight_ball = MagicEightBall::EightBall.new(responder, questions.items)

  loop do

    puts eight_ball.greet_user
    question = gets.chomp.strip

    break if (%w{quit q exit Q Quit QUIT}.include?(question) || question.empty?)
    interstitial.show_waiting_message
    sleep(2)

    puts eight_ball.give_advice
  end
end