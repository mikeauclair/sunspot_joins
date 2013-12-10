module Sunspot
  class JoinField < Field #:nodoc:

    attr_reader :join_string

    def initialize(name, type, options = {})
      super(name, type, options)
      @join_string = options.delete(:join_string)
      raise ArgumentError, "Unknown field option #{options.keys.first.inspect} provided for field #{name.inspect}" unless options.empty?
    end
   
   end
 end