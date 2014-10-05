module Hydrogen
  class TableObject
    def initialize(model, uri)
      unless model.kind_of?(Hydrogen::Model)
        raise "#{model.inspect} is not a valid model to get thrown."
      end
      @model = model
      @uri = uri
    end

    attr_reader :uri
    alias_method :url, :uri

    def columns
      @model.columns
    end

    def name
      @model.name
    end

    def path
      Hydrogen.logger.warn("Hydrogen::TableObject#path is deprecated. Please use #url.")
      Hydrogen.logger.debug("Called by #{caller.join("\n")}")
      url
    end
  end
end
