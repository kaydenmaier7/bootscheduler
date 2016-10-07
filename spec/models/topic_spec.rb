require 'rails_helper'

RSpec.describe Topic, type: :model do
describe "attributes" do
    it { is_expected.to have_db_column(:name)}
  end

  describe "associations" do
    it { is_expected.to have_and_belong_to_many(:boots) }
    it { is_expected.to have_many(:appointments) }
  end
end
