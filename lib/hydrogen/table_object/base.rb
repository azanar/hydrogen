module Hydrogen
  class TableObject
    module Base
      def initialize(model)
        if model.kind_of?(Hydrogen::TableObject::Base)
          raise "#{model.inspect} is not a valid model to get thrown."
        end
        @model = model
      end

      def columns
        @model.columns
      end

      def name
        @model.name
      end

      def url
        URI("#{@model.name}/#{name}.csv")
      end

      def path
        @path ||= url
      end
    end
  end
end
