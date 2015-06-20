require 'twitter'
require 'pp'

module AccidentalHaiku
  class PrettyPrinter
    include Celluloid
    include Celluloid::Notifications

    def initialize
      async.subscribe(TWEET, :write)
      async.subscribe(DM,    :write)
    end
    
    def write(topic, object)
      pp object
    end

  end
end