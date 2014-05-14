class Article < ActiveRecord::Base
  has_many :comments
  validates :title, :url, presence: true
  validates :url, :format => URI::regexp(%w(http https))
end
