require 'rails_helper'

RSpec.describe Feedback, type: :model do
  describe "attributes" do
    it { is_expected.to have_db_column(:rating)}
    it { is_expected.to have_db_column(:comment)}
    it { is_expected.to have_db_column(:ask)}
  end

  describe "associations" do
    it { is_expected.to belong_to(:boot) }
  end
end
