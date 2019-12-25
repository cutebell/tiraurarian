class Tweet < ApplicationRecord
  before_create :format_content

  belongs_to :user, foreign_key: :user_id, primary_key: :id
  belongs_to :tweet, foreign_key: :parent_id, primary_key: :id, counter_cache: :res_count, optional: true
  has_many :tweets
  has_many :goods
  has_many :bookmarks

  validates :content, length: { in: 1..140 }

  has_attached_file :image, url: "/system/images/:hash.:extension", hash_secret: "longSecretString", styles: { large: "1024x1024>", medium: "512x512>", thumb_large: "128x128#", thumb: "64x64#" }, default_url: "/images/null.png"
  do_not_validate_attachment_file_type :image

  def format_content
    self.content.gsub!(/[\r\n|\r|\n]/, " ")
  end
end
