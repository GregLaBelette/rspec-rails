require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the PostsHelper. For example:
#
# describe PostsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe PostsHelper, type: :helper do
<<<<<<< HEAD
  include PostsHelper
  it 'assigns a user to a post' do
    creator = User.first_or_create!(email: 'tes@test.com', password: 'password', password_confirmation: 'password')
    @post = Post.new(
      title: 'My string',
      body: 'My Text ',
      views: 1
    )
    returned_post = assign_post_creator(@post, creator)
    expect(returned_post.user).to be(creator)
  end
=======
  pending "add some examples to (or delete) #{__FILE__}"
>>>>>>> e5dda2ca2943b807e5e5173420a7b52ce5074dd8
end
