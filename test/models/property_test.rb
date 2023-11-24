require "test_helper"

class PropertyTest < ActiveSupport::TestCase
  # default params
  def valid_params
    {name: "Wardrobe", description: "Spacious wardrobe with excellent amenities."}
  end

  test "should save property with valid params" do
    property = Property.new(valid_params)
    assert property.save
  end

  test "should not save property without name" do
    property = Property.new(valid_params.except(:name))
    assert_not property.save
  end

  test "should not save property without description" do
    property = Property.new(valid_params.except(:description))
    assert_not property.save
  end
end
