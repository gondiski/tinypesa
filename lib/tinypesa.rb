require "tinypesa/version"

module Tinypesa
  class Error < StandardError; end
  # Your code goes here...
  class Pay
    def self.stk(amount,number)
      return "Transaction made"
    end
  end
end
