module AccidentalHaiku::Haiku
  class Base
    
    def call(text)
      Syllable.count(text) == 17
    end

  end
end