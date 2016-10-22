class Bbspost < ActiveRecord::Base
  default_scope -> { order(created_at: :desc) }
  validates :title, presence: true, length: { maximum: 50 }
  validates :username, presence: true, length: { maximum: 20 }
  validates :content, presence: true, length: { maximum: 200 }
end
