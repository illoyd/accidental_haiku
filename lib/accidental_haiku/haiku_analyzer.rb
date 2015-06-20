module AccidentalHaiku
  class HaikuAnalyzer
    include Celluloid

    def initialize
    end
    
    def analyze(topic, tt)
      if (haiku?(tt.text) ||haiku?())
    end
    
    def haiku?(text)
    end
    
    def remove_hashtags(text)
      text.gsub('#', '')
    end
    
    def remove_prefixed_hashtags(text)
    end
    
    def remove_suffixed_hashtags(text)
    end
    
    def find_inside_quotes(text)
    end

    def remove_prefixed_context(text)
    end
    

  end
end