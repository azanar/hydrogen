require 'hydrogen/table_object/part'

module Hydrogen
  class TableObject
    class Part
      class Sequence
        include Enumerable
        def initialize(model, parts, opts = {})
          @model = model
          @parts = parts
        end

        def parts
          @parts
        end

        def num_parts
          @parts.length
        end

        def each
          @parts.each {|p| yield p}
        end

        def name
          @model.name
        end

        def columns
          @model.columns
        end

        def partition?
          @model.partition?
        end

        def path
          "#{name}/#{name}"
        end
      end
    end
  end
end
