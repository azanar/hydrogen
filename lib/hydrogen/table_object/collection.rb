module Hydrogen
  class TableObject
    module Collection
      def initialize(model, parts)
        @model = model
        @parts = parts
      end

      attr_reader :parts

      def path
        "#{@model.name}/#{@model.name}"
      end

      def url
        raise NotImplementedError
      end

      class Builder
        def initialize(model, sequencer)
          @model = model
          @sequencer = sequencer
        end

        def write(data)
          @sequencer.write(data)
        end

        def finalize
          @sequencer.finalize
          klass = @sequencer.collection

          puts klass

          klass.new(@model, @sequencer.parts)
        end
      end
    end
  end
end
