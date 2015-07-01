require 'rails_helper'

describe Subject, type: :model do
  it "requires uuid to be present" do
    Subject.new(title: "Maths").valid?.should eql(false)
  end
  it "requires uuid to be unique" do
    uuid = SecureRandom::uuid
    expect{ Subject.create(title: "English", uuid: uuid) }.to change {Subject.count}
    expect{ Subject.create(title: "Maths", uuid: uuid) }.to_not change {Subject.count}
  end
end
