module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # queries are just represented as fields
    # `all_links` is automatically camelcased to `allLinks`
    field :all_links, [LinkType], null: false
    field :all_posts, [PostType], null: false
    # First describe the field signature:
    field :post, PostType, null: false do
      argument :id, ID, required: true
    end

    # Then provide an implementation:
    def post(id:)
      Post.find(id)
    end
    
    # this method is invoked, when `all_links` fields is being resolved
    def all_links
      Link.all
    end

    def all_posts
      Post.all
    end
  end
end
