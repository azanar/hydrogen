module Hydrogen
  class TableObject
    class Collection
      def initialize(model, root, parts)
        @model = model
        @root = root
        @parts = parts
      end

      attr_reader :parts

      def partition?
        @model.partition?
      end

      def name
        @model.name
      end

      def columns
        @model.columns
      end

      def url
        @root
      end
    end
  end
end
