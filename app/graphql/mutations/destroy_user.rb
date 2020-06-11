# frozen_string_literal: true

class Mutations::DestroyUser < Mutations::BaseMutation
  argument :id, Integer, required: true

  field :user, Types::UserType, null: false
  field :errors, [String], null: false

  def resolve(id:)
    user = User.find(id)
    if user.destroy
      # Successful creation, return the created object with no errors
      {
        user: user,
        errors: []
      }
    else
      # Failed save, return the errors to the client
      {
        user: nil,
        errors: user.errors.full_messages
      }
    end
  end
end
