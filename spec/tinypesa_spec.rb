require 'tinypesa'

describe Tinypesa::Pay do
  it "Send an stk prompt" do
    expect(Tinypesa::Pay.stk(10.0,+254723347380)).to eql("Amount successfully paid to vendor")
  end

  it "Confirm the phone number is a string" do
    expect(Tinypesa::Pay.stk(10.0,+254723347380)).to eql(number.is_str?)
  end

  it "Confirm the amount is a decimal value" do
    expect(Tinypesa::Pay.stk(1.0,+254720123456)).to eql(amount.is_decimal?)
  end

  it "Confirm the amount is not a negative number" do
    expect(Tinypesa::Pay.stk(-12.00,+245723347380)).to eql(amount.is_negative?)
  end
end
