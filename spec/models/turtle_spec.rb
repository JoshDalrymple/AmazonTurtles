require 'spec_helper'

describe Turtle do

  before { @turtle = Turtle.new(type: "Snapping", speed: 1, location: "Mericah", diet: "people") }

  subject { @turtle }

  it { should respond_to(:type) }
  it { should respond_to(:speed) }
  it { should respond_to(:location) }
  it { should respond_to(:diet) }
  
end