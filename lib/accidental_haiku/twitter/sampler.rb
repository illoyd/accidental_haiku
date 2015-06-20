module AccidentalHaiku::Twitter
  class Sampler < Streamer

    def initialize()
      super
      async.sample
    end

  end
end