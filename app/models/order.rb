# frozen_string_literal: true

class Order < ApplicationRecord
  has_many :payments
end
