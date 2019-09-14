require 'test_helper'

class GlazeMaterialTest < ActiveSupport::TestCase
  test "a valid GlazeMaterial must have a name" do
    gm = GlazeMaterial.new
    refute gm.valid?, 'glaze material invalid without a name'
    assert_not_nil gm.errors[:name]
  end

  test "the name must be unique" do
    gm = GlazeMaterial.create(name: "Dolomite")
    gm2 = GlazeMaterial.new(name: 'Dolomite')
    refute gm2.valid?, 'name is not unique'
  end
end
