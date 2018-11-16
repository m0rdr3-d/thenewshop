module RubyWallet
  class Transfer
    include Mongoid::Document
    #include Mongoid::Paranoia

    field :timestamp,      type: Time

    field :sender_id,      type: String
    field :recipeint_id,   type: String

    field :category,       type: String
    field :amount,         type: BigDecimal
       
    field :comment,        type: String

    embedded_in :wallet

    validates :category, format: { with: /\A(send|receive)\z/ }
    validates :amount, format: { with: /\A(-|)\d{0,8}(\.\d{1,8}|)\z/ }
    validate  :amount_check

    def sender
      wallet.accounts.find(self.sender_id)
    end

    def recipient
      wallet.accounts.find(self.recipient_id)
    end

    protected

      def amount_check
        if category == "send"
          amount < BigDecimal.new(0)
        else
          amount > BigDecimal.new(0)
        end
      end

  end
end
