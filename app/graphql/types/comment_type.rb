module Types
  class CommentType < Types::BaseObject
    field :id, ID, null: false
    field :text, String, null: false
    field :post, PostType, null: true
      description "This post's comments, or null if this post has comments disabled."
  end
end
