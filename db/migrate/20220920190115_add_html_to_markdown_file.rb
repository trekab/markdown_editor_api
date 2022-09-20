class AddHtmlToMarkdownFile < ActiveRecord::Migration[7.0]
  def change
    add_column :markdown_files, :html, :text
  end
end
