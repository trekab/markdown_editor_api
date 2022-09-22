require "rails_helper"

RSpec.describe MarkdownFile, :type => :model do
  subject {
    described_class.new(name: "Testing.md",
                        content: "# Testing!!!")
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without content" do
    subject.content = nil
    expect(subject).to_not be_valid
  end
end
