class Post < ApplicationRecord
  belongs_to :user
<<<<<<< HEAD
  validates :title, presence: true, length: { minimum: 2 }
  validates :body, presence: true, length: { in: 5..100 }
  validates :views, numericality: { only_integer: true }
=======
>>>>>>> e5dda2ca2943b807e5e5173420a7b52ce5074dd8
end
