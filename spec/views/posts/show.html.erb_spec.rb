require 'rails_helper'

RSpec.describe "posts/show", type: :view do
<<<<<<< HEAD
  current_user = User.first_or_create!(email: 'tes@test.com', password: 'password', password_confirmation: 'password')
=======
>>>>>>> e5dda2ca2943b807e5e5173420a7b52ce5074dd8
  before(:each) do
    @post = assign(:post, Post.create!(
      title: "Title",
      body: "MyText",
<<<<<<< HEAD
      user: current_user,
=======
      user: nil,
>>>>>>> e5dda2ca2943b807e5e5173420a7b52ce5074dd8
      views: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
<<<<<<< HEAD
    expect(rendered).to match(/1/)
=======
    expect(rendered).to match(//)
>>>>>>> e5dda2ca2943b807e5e5173420a7b52ce5074dd8
    expect(rendered).to match(/2/)
  end
end
