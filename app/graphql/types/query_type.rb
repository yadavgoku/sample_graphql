# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :all_orders, [Types::OrderType], null: false

    def all_orders
      Order.all
    end

    field :all_users, [Types::UserType], null: false

    def all_users
      User.all
    end

    field :all_products, [Types::ProductType], null: false

    def all_products
      Product.all
    end

    field :product, Types::ProductType, null: false do
      argument :id, ID, required: true
    end

    def product(id:)
      Product.find(id)
    end
  end
end
