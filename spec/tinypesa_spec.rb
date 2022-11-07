require 'tinypesa'

describe Tinypesa::Pay do
  it "Send an stk prompt" do
    expect(Tinypesa::Pay.stk(amount,number)).to eql("Amount successfully paid to vendor")
  end

  it "Confirm the phone number is a string" do
    expect(Tinypesa::Pay.stk(amount,number.kind_of? String)).to eql(true)
  end

  it "Confirm the amount is a decimal value" do
    expect(Tinypesa::Pay.stk(amount.kind_of? Integer, number)).to eql(true)
  end

  it "Confirm the amount is not a negative number" do
    expect(Tinypesa::Pay.stk(amount.negative?,number)).to eql(false)
  end
end
