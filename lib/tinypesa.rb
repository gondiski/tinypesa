require "tinypesa/version"
require "httparty"
require "dotenv/load"
module Tinypesa
  class Error < StandardError; end
  # Your code goes here...
  class Pay
    def self.stk(amount,number)
      url = "http://www.tinypesa.com/api/v1/express/initialize"
      return "Transaction made"
    end
  end
end
