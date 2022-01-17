require 'rails_helper'

RSpec.describe "posts/edit", type: :view do
<<<<<<< HEAD
  current_user = User.first_or_create!(email: 'tes@test.com', password: 'password', password_confirmation: 'password')
=======
>>>>>>> e5dda2ca2943b807e5e5173420a7b52ce5074dd8
  before(:each) do
    @post = assign(:post, Post.create!(
      title: "MyString",
      body: "MyText",
<<<<<<< HEAD
      user: current_user,
=======
      user: nil,
>>>>>>> e5dda2ca2943b807e5e5173420a7b52ce5074dd8
      views: 1
    ))
  end

  it "renders the edit post form" do
    render

    assert_select "form[action=?][method=?]", post_path(@post), "post" do

      assert_select "input[name=?]", "post[title]"

      assert_select "textarea[name=?]", "post[body]"
<<<<<<< HEAD
=======

      assert_select "input[name=?]", "post[user_id]"

      assert_select "input[name=?]", "post[views]"
>>>>>>> e5dda2ca2943b807e5e5173420a7b52ce5074dd8
    end
  end
end
