require 'rails_helper'

RSpec.describe User, type: :model do
  it "is valid with a username and email, and password" do
    user = User.new(
      username:   "Sumner1",
      email:      "tester@example.com",
      password:   "dottle-nouveau-pavilion-tights-furze",
    )
    expect(user).to be_valid
  end
end
