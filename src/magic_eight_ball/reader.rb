require 'yaml'

module MagicEightBall
  class Reader
    attr_reader :items
    def initialize(field = 'questions')
      @items = YAML.load_file(File.join(Dir.getwd, 'resources/q_and_a.yml'))[field]
    end
  end
end