require 'spec_helper'

describe Turtle do

  before { @turtle = Turtle.new(type: "Snapping", speed: 1, location: "Mericah", diet: "people") }

  subject { @turtle }

  it { should respond_to(:type) }
  it { should respond_to(:speed) }
  it { should respond_to(:location) }
  it { should respond_to(:diet) }
  
  it { should be_valid }

  describe "when type is not present" do
    before { @turtle.type = " " }
    it { should_not be_valid }
  end
  
  describe "when speed is not present" do
    before { @turtle.speed = " " }
    it { should_not be_valid }
  end
  
  describe "when location is not present" do
    before { @turtle.location = " " }
    it { should_not be_valid }
  end
  
  describe "when diet is not present" do
    before { @turtle.diet = " " }
    it { should_not be_valid }
  end
  
end