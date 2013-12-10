module Sunspot
  module Type
    class JoinField < AbstractType
      def indexed_name(name) #:nodoc:
        "#{name}_join"
      end

      def to_indexed(value) #:nodoc:
        value.to_s if value
      end

      def cast(text)
        text
      end

      def accepts_dynamic?
        false
      end

      def accepts_more_like_this?
        true
      end
    end
  end
end