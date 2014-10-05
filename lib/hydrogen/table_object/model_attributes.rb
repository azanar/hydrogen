module Hydrogen
  class TableObject
    module ModelAttributes
      def partition?
        @model.partition?
      end

      def name
        @model.name
      end

      def columns
        @model.columns
      end
    end
  end
end
