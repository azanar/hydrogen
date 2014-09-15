module Hydrogen
  class TableObject
    module Collection
      def initialize(model, parts)
        @model = model
        @parts = parts
      end

      attr_reader :parts
      attr_reader :model

      def path
        "#{@model.name}/#{@model.name}"
      end

      def url
        raise NotImplementedError
      end
    end
  end
end
