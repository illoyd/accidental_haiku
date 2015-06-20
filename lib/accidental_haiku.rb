require "accidental_haiku/version"

# Include standard libraries
require 'celluloid'
require 'celluloid/io'
require 'twitter'
require 'pp'

# Start the celluloid notification queue
require 'celluloid/autostart'

# Define the main AccidentalHaiku module
module AccidentalHaiku
  module Twitter; end
end

# Include topics
require 'accidental_haiku/topics'

# Include syllable library
require 'syllable'

# Include Twitter integration
require "accidental_haiku/twitter/client"
require "accidental_haiku/twitter/streamer"
require "accidental_haiku/twitter/sampler"

# Include my stuff
require "accidental_haiku/pretty_printer"
