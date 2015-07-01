require 'rails_helper'

describe Qualification, type: :model do
  it "requires uuid to be present" do
    Qualification.new(name: "ATAR").valid?.should eql(false)
  end
  it "requires uuid to be unique" do
    uuid = SecureRandom::uuid
    expect{ Qualification.create(name: "UAC", uuid: uuid) }.to change {Qualification.count}
    expect{ Qualification.create(name: "ATAR", uuid: uuid) }.to_not change {Qualification.count}
  end
end
