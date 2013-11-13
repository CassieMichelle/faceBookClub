
require 'spec_helper'

describe User do

  before { @user = User.new(screen_name: "Example User", email: "user@example.com") }

  subject { @user }
  
  it { should respond_to(:screen_name) }
  it { should respond_to(:email) }

  it { should be_valid }

  describe "when screen_name is not present" do
  	before { @user.screen_name = " "}
  	it {should_not be_valid}
  end 
end 