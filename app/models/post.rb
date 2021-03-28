class Post < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  # post.liked_usersでpostを「いいね！」しているユーザーの一覧を取得できるようになる
  has_many :liked_users, through: :likes, source: :user
  validates :content, presence: true
end
