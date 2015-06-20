module AccidentalHaiku::Twitter
  class Streamer
    include Celluloid::IO
    include Celluloid::Notifications
    include Celluloid::Logger
    
    attr_accessor :options

    def initialize(options = {})
      @options = options.merge(default_options)
    end
    
    def client
      @client ||= Client.new(@options)
    end

    def sample
      info 'Sampling...'
      client.sample(&listener_block)
    end
    
    def track(*keywords)
      info "Tracking #{ keywords.join(', ') }..."
      client.filter(track: keywords.join(','), &listener_block)
    end
    
    def follow(*users)
      info "Following #{ users.join(', ') }..."
      client.filter(follow: users.join(','), &listener_block)
    end
    
    protected
    
    def default_options
      {}
    end
    
    def listener_block
      ->(object) {
        case object
        when Twitter::Tweet
          debug "Received tweet #{ object.id }: #{ object.text }"
          publish(AccidentalHaiku::TWEET,  object)

        when Twitter::DirectMessage
          debug "Received DM #{ object.id }: #{ object.text }"
          publish(AccidentalHaiku::DM,     object)
        
        when Twitter::Streaming::DeletedTweet
          debug "Received delete for #{ object.id }"
          publish(AccidentalHaiku::DELETE, object)

        when Twitter::Streaming::StallWarning
          warn "Falling behind!"
          publish(AccidentalHaiku::STALL,  object)
        
        else
          warn "Received #{object}"

        end        
      }
    end

  end
end