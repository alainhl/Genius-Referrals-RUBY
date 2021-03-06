# This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).

module GeniusReferrals
  class Bonuses < BaseModel
    # The referral's token. Usually the one that completed the purchase, or trigger an event.
    # @return [String]
    attr_accessor :advocate_token

    # The reference number for this request. Usually the order_id, payment_id, or timestamp.
    # @return [String]
    attr_accessor :reference

    # The payment amount the referrals has made. Required for a percentage based campaign.
    # @return [Float]
    attr_accessor :payment_amount

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["advocate_token"] = "advocate_token"
        @hash["reference"] = "reference"
        @hash["payment_amount"] = "payment_amount"
      end
      @hash
    end

    def initialize(advocate_token = nil,
                   reference = nil,
                   payment_amount = nil)
      @advocate_token = advocate_token
      @reference = reference
      @payment_amount = payment_amount
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        advocate_token = hash["advocate_token"]
        reference = hash["reference"]
        payment_amount = hash["payment_amount"]

        # Create object from extracted values
        Bonuses.new(advocate_token,
                    reference,
                    payment_amount)
      end
    end
  end
end
