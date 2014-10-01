require 'hydrogen/table_object/base'

module Hydrogen
  class TableObject
    # A TableObject::Part behaves like a TableObject, but represent a part
    # of a sequence of TableObjects
    class Part
      include Hydrogen::TableObject::Base
      def initialize(chunk, model)
        @chunk = chunk
        super(model)
      end

      def file
      end

      def name
        "#{super}.#{@chunk}"
      end
    end
  end
end
