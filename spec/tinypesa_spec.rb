require 'tinypesa'

describe Tinypesa::Pay do
  it "Send an stk prompt" do
    expect(Tinypesa::Pay.stk(10.0,+254723347380)).to eql("Amount successfully paid to vendor")
  end
end
