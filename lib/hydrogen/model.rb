module Hydrogen
  class Model
    def initialize(config)
      @table_name = config[:table_name]
      @columns = config[:columns]
      @partition = config[:partition] || false
    end

    attr_reader :table_name, :columns

    def name
      @table_name
    end

    def partition?
      !!@partition
    end
  end
end

