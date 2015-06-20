#!/usr/bin/ruby
require 'accidental_haiku'

# Reduce logging
Celluloid.logger.level = 1

# Activate listeners
AccidentalHaiku::PrettyPrinter.new

# Activate sampler
AccidentalHaiku::Twitter::Sampler.new

# Annnnnnd wait for an enter
STDIN.gets

# Nicely shutdown
Celluloid.shutdown

0