require 'rails_helper'

RSpec.describe Post, type: :model do
  current_user = User.first_or_create!(email: 'tes@test.com', password: 'password', password_confirmation: 'password')
  it 'has a title' do
    post = Post.new(
      title: '',
      body: 'A valid body',
      user: current_user,
      views: 0
    )

    expect(post).to_not be_valid
    post.title = 'Title'
    expect(post).to be_valid
  end

  it 'has a body' do
    post = Post.new(
      title: 'Valid title',
      body: '',
      user: current_user,
      views: 0
    )

    expect(post).to_not be_valid
    post.body = 'A valid body'
    expect(post).to be_valid
  end

  it 'has a title at least 2 characters' do
    post = Post.new(
      title: 'a',
      body: 'A valid body',
      user: current_user,
      views: 0
    )

    expect(post).to_not be_valid
    post.title = 'A valid title'
    expect(post).to be_valid
  end

  it 'has a body between 5 and 100 characters' do
    post = Post.new(
      title: 'A valid title',
      body: '1234',
      user: current_user,
      views: 0
    )

    expect(post).to_not be_valid
    post.body = '12345'
    expect(post).to be_valid
    hundred = 'rOxEm3coEzX1eem0pK2mUL2t3XJWY0ygDGmig6uEvolcEuE4cOCoJL8D3NZ2Osr2So8MXRNQvRrz3ZMflBIw2nd09YWlZ8RtkKmV'
    post.body = hundred
    expect(post).to be_valid
    post.body = "#{hundred} "
    expect(post).to_not be_valid
  end

  it 'has numerical views' do
    post = Post.new(
      title: 'A valid title',
      body: 'A valid body',
      user: current_user,
      views: 0
    )

    expect(post.views).to be_a(Integer)
  end
end
