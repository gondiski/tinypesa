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

    def self.status(account_no)
      response = HTTParty.get("http://www.tinypesa.com/api/v1/express/get_status",
                              headers:{
                              'authorization'=> "Bearer #{ENV[TINYPESA_KEY]}",
                              'content_type'=>'application/json'},
                              query:{
                                account_no: account_no}
                              )
      return response.message
    end
  end
  class Merchant
    def self.create(name,description,link_mode,short_code,account_number,bank,bank_acc_no,call_back_url)
      response = HTTParty.post("http://www.tinypesa.com/api/v1/express/create_link",
                              headers:{
                              'authorization'=> "Bearer #{ENV[TINYPESA_KEY]}",
                              'content_type'=>'application/json'},
                              query:{
                                name: name,
                                description: description,
                                link_mode: link_mode,
                                short_code: short_code,
                                account_number: account_number,
                                bank: bank
                                bank_acc_no: bank_acc_no,
                                call_back_url: call_back_url}
                              )
      return response
    end
  end
end
