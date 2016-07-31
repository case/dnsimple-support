include Nanoc::Helpers::Rendering
include Nanoc::Helpers::XMLSitemap

def articles
  @items.select { |item| item.identifier.start_with?("/article") }
end

def prioritize(what, items, &block)
  Priorities.new.sort(what, items, &block)
end
