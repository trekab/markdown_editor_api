class MarkdownFile < ApplicationRecord
  validates :name, uniqueness: true
  validates :content, presence: true
end
