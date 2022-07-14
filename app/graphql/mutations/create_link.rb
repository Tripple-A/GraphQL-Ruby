module Mutations
  class CreateLink < BaseMutation
    # arguments passed to the resolve method
    argument :description, String, required: true
    argument :url, String, required: true

    # return type from the mutation
    # field :url, [String], null: false
    # field :description, [String], null: false
    field :link, Types::LinkType, null: false

    def resolve(description: nil, url: nil)
      link = Link.create!(
        url: url,
        description: description
      )
      {
        link: link
      }
    end
  end
end
  