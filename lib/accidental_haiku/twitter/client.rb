module AccidentalHaiku::Twitter
  class Client < Twitter::Streaming::Client

    def initialize(options = {})
      super( options.merge(default_options) )
    end
    
    protected
    
    def default_options
      {
        # Twitter authentication details
        consumer_key:        ENV['TWITTER_CONSUMER_KEY'],
        consumer_secret:     ENV['TWITTER_CONSUMER_SECRET'],
        access_token:        ENV['TWITTER_ACCESS_TOKEN'],
        access_token_secret: ENV['TWITTER_ACCESS_SECRET'],
        
        # Client options
        tcp_socket_class: Celluloid::IO::TCPSocket,
        ssl_socket_class: Celluloid::IO::SSLSocket
      }
    end
    
  end
end