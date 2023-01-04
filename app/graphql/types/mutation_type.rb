module Types
  class MutationType < Types::BaseObject
    # TODO: remove me
    field :create_link, mutation: Mutations::CreateLink
    field :create_post, mutation: Mutations::CreatePost
  end
end
