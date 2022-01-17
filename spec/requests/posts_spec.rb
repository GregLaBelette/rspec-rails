<<<<<<< HEAD
require 'rails_helper'
=======
 require 'rails_helper'
>>>>>>> e5dda2ca2943b807e5e5173420a7b52ce5074dd8

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/posts", type: :request do
<<<<<<< HEAD
  current_user = User.first_or_create!(email: 'tes@test.com', password: 'password', password_confirmation: 'password')
  # Post. As you add validations to Post, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    {
      'id' => '1',
      'title' => 'Test',
      'body' => '12345'
    }
  end

  let(:invalid_attributes) do
    {
      'id' => 'a',
      'title' => '1',
      'body' => '1234'
    }
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      post = Post.new(valid_attributes)
      post.user = current_user
      post.save!
=======
  
  # Post. As you add validations to Post, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Post.create! valid_attributes
>>>>>>> e5dda2ca2943b807e5e5173420a7b52ce5074dd8
      get posts_url
      expect(response).to be_successful
    end
  end

<<<<<<< HEAD
  describe 'GET /show' do
    it 'renders a successful response' do
      post = Post.new(valid_attributes)
      post.user = current_user
      post.save
=======
  describe "GET /show" do
    it "renders a successful response" do
      post = Post.create! valid_attributes
>>>>>>> e5dda2ca2943b807e5e5173420a7b52ce5074dd8
      get post_url(post)
      expect(response).to be_successful
    end
  end

<<<<<<< HEAD
  describe 'GET /new' do
    it 'renders a successful response' do
=======
  describe "GET /new" do
    it "renders a successful response" do
>>>>>>> e5dda2ca2943b807e5e5173420a7b52ce5074dd8
      get new_post_url
      expect(response).to be_successful
    end
  end

<<<<<<< HEAD
  describe 'GET /edit' do
    it 'render a successful response' do
      post = Post.new(valid_attributes)
      post.user = current_user
      post.save
=======
  describe "GET /edit" do
    it "render a successful response" do
      post = Post.create! valid_attributes
>>>>>>> e5dda2ca2943b807e5e5173420a7b52ce5074dd8
      get edit_post_url(post)
      expect(response).to be_successful
    end
  end
<<<<<<< HEAD
=======

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Post" do
        expect {
          post posts_url, params: { post: valid_attributes }
        }.to change(Post, :count).by(1)
      end

      it "redirects to the created post" do
        post posts_url, params: { post: valid_attributes }
        expect(response).to redirect_to(post_url(Post.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Post" do
        expect {
          post posts_url, params: { post: invalid_attributes }
        }.to change(Post, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post posts_url, params: { post: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested post" do
        post = Post.create! valid_attributes
        patch post_url(post), params: { post: new_attributes }
        post.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the post" do
        post = Post.create! valid_attributes
        patch post_url(post), params: { post: new_attributes }
        post.reload
        expect(response).to redirect_to(post_url(post))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        post = Post.create! valid_attributes
        patch post_url(post), params: { post: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested post" do
      post = Post.create! valid_attributes
      expect {
        delete post_url(post)
      }.to change(Post, :count).by(-1)
    end

    it "redirects to the posts list" do
      post = Post.create! valid_attributes
      delete post_url(post)
      expect(response).to redirect_to(posts_url)
    end
  end
>>>>>>> e5dda2ca2943b807e5e5173420a7b52ce5074dd8
end
