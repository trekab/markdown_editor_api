class MarkdownFile < ApplicationRecord
  after_validation :html_attribute
  validates :name, uniqueness: true
  validates :content, presence: true

  def html_attribute
    self.html = Markdown.new(self.content).to_html
  end
end
