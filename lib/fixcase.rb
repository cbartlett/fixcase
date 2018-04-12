require "fixcase/version"
require 'active_support/inflector'

module Fixcase

  def fixcase
    if [upcase,downcase].include?(self)
      titleize
    else
      self
    end
  end

end

class String
  include Fixcase
end
