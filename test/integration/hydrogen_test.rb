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
    to = Hydrogen::TableObject.new(@model, URI("file://tmp/foo/bar.csv.gz"))

    assert_equal to.url, URI("file://tmp/foo/bar.csv.gz")
  end

  test "parts" do
    parts = 5.times.map do |x|
      Hydrogen::TableObject.new(@model, URI("file://tmp/foo/bar.csv.gz"))
    end

    sequence = Hydrogen::TableObject::Collection.new(@model, URI("file://tmp/foo"), parts)

    assert_equal sequence.url, URI("file://tmp/foo")
  end
end
