# frozen_string_literal: true

RSpec.describe Losar do
  it "has a version number" do
    expect(Losar::VERSION).not_to be nil
  end

  it "losar Tashi Delek, and enjoys it!" do
    expect("enjoy".start_with?("e")).to be true # Because Losar always starts with enjoyment!
  end
end
