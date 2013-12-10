require "sunspot_joins/version"

%w(fields).each do |file|
  require File.join(File.dirname(__FILE__), 'sunspot', "dsl", file)
end


%w(field field_factory setup type).each do |file|
  require File.join(File.dirname(__FILE__), 'sunspot', file)
end

%w(restriction).each do |file|
  require(File.join(File.dirname(__FILE__), 'sunspot', 'query', file))
end
