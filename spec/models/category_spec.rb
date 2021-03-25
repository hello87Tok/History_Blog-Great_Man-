require 'rails_helper'

RSpec.describe Category, type: :model do

  it "is valid with a name" do
    @category = Category.new(
      name:   "Cute",
    )
    expect(@category).to be_valid
  end


  it "is valid with unique name" do
    @category = Category.new(
      name:   "Cute",
    )
    @category.save
    @category2 = Category.new(
      name:   "Cool",
    )
    expect(@category2).to be_valid
  end

  it "is not too long name" do
    @category = Category.new(
      name:   "a",
    )
    expect(@category).not_to be_valid
  end









end
