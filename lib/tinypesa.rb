require "tinypesa/version"
require "httparty"
require "dotenv/load"

module Tinypesa
  class Error < StandardError; end
  # Your code goes here...
  class Pay
    def self.stk(amount,number)
      response = HTTParty.post("http://www.tinypesa.com/api/v1/express/initialize",
                              headers:{
                              'authorization'=> "Bearer #{ENV[TINYPESA_KEY]}",
                              'content_type'=>'application/json'},
                              query:{
                                amount: amount,
                                number: number}
                              )
      
      return "Transaction made"
    end
  end
end
