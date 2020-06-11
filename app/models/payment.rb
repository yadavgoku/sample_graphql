# frozen_string_literal: true

# app/models/payment.rb
class Payment < ApplicationRecord
  belongs_to :order
end
