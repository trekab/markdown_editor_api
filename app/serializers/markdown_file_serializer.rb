class MarkdownFileSerializer
  include JSONAPI::Serializer
  attributes :name, :content, :html
end
