
require 'rails_helper'

RSpec.describe User, type: :model do

  before(:each) do 
		@user = FactoryBot.create(:user)  	
  end

  it "has a valid factory" do
    expect(build(:user)).to be_valid
  end

   describe "#email" do
     it { expect(@user).to validate_presence_of(:email) }
     it { expect(@user).to validate_uniqueness_of(:email) }
 		 it { is_expected.to_not allow_value("foo").for(:email) }
  end

   describe "#first_name" do
    it { expect(@user).to validate_presence_of(:first_name) }
  end

   describe "#last_name" do
    it { expect(@user).to validate_presence_of(:last_name) }
  end  

   describe "#age" do
    it { expect(@user).to validate_presence_of(:age) }
  end  

   describe "#description" do
    it { expect(@user).to validate_presence_of(:description) }
  end  


  context "associations" do
    it { expect(@user).to belong_to(:city)}
    it { expect(@user).to have_many(:gossips)}
  end
end

