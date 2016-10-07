require 'rails_helper'

RSpec.describe Boot, type: :model do
  describe "attributes" do
    it { is_expected.to have_db_column(:first_name) }
    it { is_expected.to have_db_column(:last_name) }
    it { is_expected.to have_db_column(:phone) }
    it { is_expected.to have_db_column(:role) }
    it { is_expected.to have_db_column(:email) }
    it { is_expected.to have_db_column(:password_digest) }
  end

  describe "associations" do
  end
end
