require 'rails_helper'

RSpec.describe Appointment, type: :model do
  describe "attributes" do
    it { is_expected.to have_db_column(:time)}
    it { is_expected.to have_db_column(:date)}
    it { is_expected.to have_db_column(:location)}
  end

  describe "associations" do
    it { is_expected.to belong_to(:mentor).class_name("Boot") }
    it { is_expected.to belong_to(:student).class_name("Boot") }
    it { is_expected.to belong_to(:topic) }
  end
end
