class CartItem < ApplicationRecord
  belongs_to :cart
  belongs_to :action
end
