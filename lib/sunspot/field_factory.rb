module Sunspot
  module FieldFactory
    class Join < Abstract
      def initialize(name, type, options = {}, &block)
        super(name, options, &block)
        unless name.to_s =~ /^\w+$/
          raise ArgumentError, "Invalid field name #{name}: only letters, numbers, and underscores are allowed."
        end
        @field =
          JoinField.new(name, type, options)
      end

      # 
      # Return the field instance built by this factory
      #
      def build
        @field
      end

      # 
      # Extract the encapsulated field's data from the given model and add it
      # into the Solr document for indexing.
      #
      def populate_document(document, model) #:nodoc:
        # noop
      end

      # 
      # A unique signature identifying this field by name and type.
      #
      def signature
        ['join', @field.name, @field.join_string]
      end
    end
  end
end