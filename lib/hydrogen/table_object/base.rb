module Hydrogen
  class TableObject
    module Base
      def initialize(model)
        @model = model
      end

      def columns
        @model.columns
      end

      def name
        @model.name
      end

      def path
        @path ||= "#{@model.name}/#{name}.psv.gz"
      end
    end
  end
end
