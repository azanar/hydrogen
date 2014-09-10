require File.expand_path('../../../test_helper', __FILE__)

require 'hydrogen/table_object/base'

class Hydrogen::TableObject::Base::Test < Test::Unit::TestCase
  include TestHelper 
  setup do
    @mock_table_object = mock
    @mock_table_object_name = "mock_table_name"

    mock_table_object_klass = Class.new do
      include Hydrogen::TableObject::Base
    end

    @table_object = mock_table_object_klass.new(@mock_table_object)
  end

  test "#path" do
    @mock_table_object.expects(:name).twice.returns(@mock_table_object_name)
    @table_object.path
  end

  test "#path should cache" do
    @mock_table_object.expects(:name).twice.returns(@mock_table_object_name)
    anterior = @table_object.path

    posterior = @table_object.path

    assert_equal anterior, posterior
  end
end

