require 'rails_helper'

RSpec.describe "posts/index", type: :view do
<<<<<<< HEAD
  current_user = User.first_or_create!(email: 'tes@test.com', password: 'password', password_confirmation: 'password')
=======
>>>>>>> e5dda2ca2943b807e5e5173420a7b52ce5074dd8
  before(:each) do
    assign(:posts, [
      Post.create!(
        title: "Title",
        body: "MyText",
<<<<<<< HEAD
        user: current_user,
        views: 14
=======
        user: nil,
        views: 2
>>>>>>> e5dda2ca2943b807e5e5173420a7b52ce5074dd8
      ),
      Post.create!(
        title: "Title",
        body: "MyText",
<<<<<<< HEAD
        user: current_user,
        views: 12
=======
        user: nil,
        views: 2
>>>>>>> e5dda2ca2943b807e5e5173420a7b52ce5074dd8
      )
    ])
  end

  it "renders a list of posts" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
<<<<<<< HEAD
    assert_select "tr>td", text: current_user.id.to_s, count: 2
    assert_select "tr>td", text: 14.to_s, count: 1
    assert_select "tr>td", text: 12.to_s, count: 1
=======
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
>>>>>>> e5dda2ca2943b807e5e5173420a7b52ce5074dd8
  end
end
