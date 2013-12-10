module Sunspot
  module DSL #:nodoc:
    # The Fields class provides a DSL for specifying field definitions in the
    # Sunspot.setup block. As well as the #text method, which creates fulltext
    # fields, uses #method_missing to allow definition of typed fields. The
    # available methods are determined by the constants defined in 
    # Sunspot::Type - in theory (though this is untested), plugin developers
    # should be able to add support for new types simply by creating new
    # implementations in Sunspot::Type
    #
    class Fields
      def join(*args, &block)
        options = Util.extract_options_from(args)
        type_const_name = 'JoinField'
        type_class = Type.const_get(type_const_name)
        type = type_class.instance
        name = args.shift
        @setup.add_join_field_factory(name, type, options, &block)
      end
    end
  end
end