

require 'rails_helper'

RSpec.describe Gossip, type: :model do

  before(:each) do 
		@gossip = FactoryBot.create(:gossip)  	
  end

  it "has a valid factory" do
    expect(build(:gossip)).to be_valid
  end

   describe "#title" do
     it { expect(@gossip).to validate_presence_of(:title) }
 		 it { is_expected.to_not allow_value("fo").for(:title) }
  end

   describe "#content" do
    it { expect(@gossip).to validate_presence_of(:content) }
  end

  context "associations" do
    it { expect(@gossip).to belong_to(:user)}
  end
end

