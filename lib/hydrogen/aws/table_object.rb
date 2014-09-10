module Hydrogen
  module AWS
    class TableObject
      def initialize(table_object)
        @table_object = table_object
      end

      def path
        @table_object.path
      end

      def url
        @table_object.url
      end
    end
  end
end

