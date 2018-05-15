Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

   field :me, Types::UserType do
      description "An example field added by the generator"
      resolve ->(obj, args, ctx) {
        User.first
      }
    end

    field :projects, types[Types::ProjectType] do
      description "A list of the users projects"
      resolve ->(obj, args, ctx) {
        Project.all
      }
    end
end
