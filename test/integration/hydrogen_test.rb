require File.expand_path('../test_helper', __FILE__)

require 'hydrogen'

class Hydrogen::IntegrationTest < Test::Unit::TestCase
  setup do
    config = {
      :table_name => 'foo',
      :source => {:file => 'data.csv'},
      :columns => %w{foo bar baz}
    }
    @model = Hydrogen::Model.new(config)

  end
  test "singular" do
    to = Hydrogen::TableObject.new(@model)

    assert_equal to.url, URI("foo/foo.csv")
  end

  test "parts" do
    parts = 5.times.map do |x|
      Hydrogen::TableObject::Part.new(x, @model)
    end

    sequence = Hydrogen::TableObject::Part::Sequence.new(@model, parts)

    assert_equal sequence.path, "foo/foo"
  end
end
