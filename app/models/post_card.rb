# == Schema Information
#
# Table name: post_cards
#
#  id         :integer          not null, primary key
#  keywords   :text
#  slug       :text
#  image_url  :text
#  published  :boolean          not null
#  sent_at    :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PostCard < ApplicationRecord

  def to_param
    slug
  end

  def next
    PostCard.where("sent_at > ?", sent_at).where(published: true).order(sent_at: :asc).limit(1).first
  end

  def prev
    PostCard.where("sent_at < ?", sent_at).where(published: true).order(sent_at: :desc).limit(1).first
  end

  translates :title, :body, :description
  validates :title, :image_url, :slug, :body, presence: true

end
