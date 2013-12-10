module Sunspot
  # 
  # This class encapsulates the search/indexing setup for a given class. Its
  # contents are built using the Sunspot.setup method.
  #
  class Setup
    def add_join_field_factory(name, type, options = {}, &block)
      field_factory = FieldFactory::Join.new(name, type, options, &block)
      @field_factories[field_factory.signature] = field_factory
      @field_factories_cache[field_factory.name] = field_factory
    end
  end
end