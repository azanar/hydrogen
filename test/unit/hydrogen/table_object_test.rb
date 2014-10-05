require File.expand_path('../../test_helper', __FILE__)

require 'hydrogen/table_object'

class Hydrogen::TableObjectTest < Test::Unit::TestCase
  include TestHelper 
  setup do
    @mock_table_object = mock
    @mock_table_object_name = "mock_table_name"

    #@mock_table_object.expects(:name).returns(@mock_table_object_name)

    uri = URI("file:///tmp/foo")

    @table_object = Hydrogen::TableObject.new(@mock_table_object, uri)
  end
  test "#url" do
    #@mock_table_object.expects(:name).twice.returns(@mock_table_object_name)
    @table_object.url
  end
end
