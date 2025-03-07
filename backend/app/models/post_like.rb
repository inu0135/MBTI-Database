# frozen_string_literal: true

# 投稿に対する「いいね」を扱うモデル
class PostLike < ApplicationRecord
  belongs_to :user
  belongs_to :post

  # 同一ユーザーが同一投稿に対して複数のいいねをできないようにする
  validates :user_id, uniqueness: { scope: :post_id }
end
