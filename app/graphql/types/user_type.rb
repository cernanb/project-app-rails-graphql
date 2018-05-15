Types::UserType = GraphQL::ObjectType.define do 
    name "User"
    description "a user"

    field :id, !types.Int
    field :email, !types.String

    field :projects, types[Types::ProjectType]
  end
