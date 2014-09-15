module Hydrogen
  class TableObject
    module Collection
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

          klass.new(@model, @sequencer.parts)
        end
      end
    end
  end
end
