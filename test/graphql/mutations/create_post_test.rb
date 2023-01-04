require 'test_helper'

class Mutations::CreatePostTest < ActiveSupport::TestCase
  def perform(user: nil, **args)
    Mutations::CreatePost.new(object: nil, field: nil, context: {}).resolve(**args)
  end

  test 'create a new post' do
    post = perform(
      title: 'http://example.com',
      rating: 'description',
    )
    post = post[:post]

    assert post.persisted?
    # assert_equal post.rating, 'description'
    assert_equal post.title, 'http://example.com'
  end
end