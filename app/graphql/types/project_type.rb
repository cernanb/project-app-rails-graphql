Types::ProjectType = GraphQL::ObjectType.define do 
  name "Project"
  description "a project"

  field :id, !types.Int
  field :title, !types.String
  field :user, Types::UserType
end