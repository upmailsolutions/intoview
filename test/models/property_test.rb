require "test_helper"

class PropertyTest < ActiveSupport::TestCase
  # default params
  def valid_params
    {
      name: "Wardrobe",
      slug: "spacious-one-bed",
      description: "Spacious one-bed-apartment with excellent amenities."
    }
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

  test "should not save with no slug" do
    property = Property.new(valid_params.except(:slug))
    assert_not property.save
  end

  test "should not save with duplicate slug" do
    property = Property.new(valid_params)
    property.save

    property2 = Property.new(valid_params)
    assert_not property2.save
  end
end
