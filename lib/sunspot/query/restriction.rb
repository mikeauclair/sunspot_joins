module Sunspot
  module Query
    module Restriction #:nodoc:
      class FromJoin < Base
        def initialize(negated, field, namespace, query)
          @namespace, @query = namespace, query
          super negated, field, [namespace, query]
        end

        private

        def to_positive_boolean_phrase
          "\{!join #{@field.join_string}\}#{@subfield}:#{solr_value @query}"
        end
      end
    end
  end
end