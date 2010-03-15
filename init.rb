begin
  # Try to require the preresolved locked set of gems.
  require File.expand_path('.bundle/environment', __FILE__)
rescue LoadError
  # Fall back on doing an unlocked resolve at runtime.
  require 'rubygems' # Can I avoid rubygems?
  require "bundler"
  Bundler.setup
end

# This actually requires the bundled gems
Bundler.require(:default)

require 'app/myway'