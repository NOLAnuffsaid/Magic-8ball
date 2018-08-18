require_relative './magic_eight_ball/eight_ball'
require_relative './magic_eight_ball/interstitial'
require_relative './magic_eight_ball/reader'
require_relative './magic_eight_ball/responder'

module MagicEightBall
  SLEEP_DURATION = 1.5

  puts "Welcome to the Magic 8ball!!!"

  interstitial = MagicEightBall::Interstitial.new
  questions = MagicEightBall::Reader.new
  answers = MagicEightBall::Reader.new('answers')
  responder = MagicEightBall::Responder.choose_rand_responder(answers)
  eight_ball = MagicEightBall::EightBall.new(responder, questions.items)

  loop do
    puts eight_ball.greet_user
    question = gets.chomp.strip.downcase

    break if question.empty? || %w[quit q exit].include?(question)

    interstitial.show_waiting_message

    sleep(SLEEP_DURATION)

    puts eight_ball.give_advice

    sleep(SLEEP_DURATION)

    puts 'Do you have another question?'
    response = gets.chomp.strip.downcase

    break if response.empty? || %w[no n].include?(response)
  end
end