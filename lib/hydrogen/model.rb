module Hydrogen
  class Model
    def initialize(config)
      @table_name = config[:table_name]
      @columns = config[:columns]
      @key = config[:key]
      @partition = config[:partition] || false
    end

    attr_reader :table_name, :columns, :key

    def name
      @table_name
    end

    def partition?
      !!@partition
    end
  end
end

