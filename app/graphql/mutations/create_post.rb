module Mutations
  class CreatePost < BaseMutation
    # arguments passed to the resolve method
    argument :title, String, required: true
    argument :rating, Integer, required: true

    # return type from the mutation
    field :post, Types::PostType, null: false

    def resolve(title: nil, rating: nil)
      post = Post.create!(
        title: title,
        rating: rating
      )
      {
        post: post
      }
    end
  end
end
  