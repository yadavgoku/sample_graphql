# frozen_string_literal: true

class Mutations::UpdateUser < Mutations::BaseMutation
  argument :id, Integer, required: true
  argument :name, String, required: true
  argument :email, String, required: true

  field :user, Types::UserType, null: false
  field :errors, [String], null: false

  def resolve(id:, **attributes)
    user = User.find(id)
    user.update(attributes)
    if user.save
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
