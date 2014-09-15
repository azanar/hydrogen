require File.expand_path('../../../../test_helper', __FILE__)

require 'hydrogen/table_object/part/sequence'

class Hydrogen::TableObject::Part::Sequence::Test < Test::Unit::TestCase
  include TestHelper 
  setup do
    @mock_model = mock
    @mock_model_name = "mock_table_name"

    @mock_model.expects(:kind_of?).with(Hydrogen::Model).returns(true)

    @mock_parts = 5.times.map { mock }

    @sequence = Hydrogen::TableObject::Part::Sequence.new(@mock_model, @mock_parts)
  end

  test "#parts" do
    #@mock_model.expects(:name).twice.returns(@mock_model_name)

    assert_equal @sequence.parts, @mock_parts
  end
end

