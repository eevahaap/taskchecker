require 'rails_helper'

RSpec.describe Teacher, type: :model do

  it "has the username set correctly" do
    teacher = Teacher.new username:"Pekka"

    teacher.username.should == "Pekka"
  end

  it "is not saved without a password" do
    teacher = Teacher.create username:"Pekka"

    expect(teacher.valid?).to be(false)
    expect(Teacher.count).to eq(0)
  end

  describe "is not saved" do

    it "with password that's too short" do
      teacher = Teacher.create username: "Pekka", password: "A1"
      expect(teacher.valid?).to be(false)
      expect(Teacher.count).to eq(0)
    end

    it "with password that doesn't contain a non-letter character" do
      teacher = Teacher.create username: "Pekka", password: "abcdefgh"
      expect(teacher.valid?).to be(false)
      expect(Teacher.count).to eq(0)
    end

    it "without a proper password" do
      teacher = Teacher.create username: "Pekka"
      expect(teacher.valid?).to be(false)
      expect(Teacher.count).to eq(0)
    end
  end

  describe "with a proper password" do
    let(:teacher){ Teacher.create username:"Pekka", password:"Secret1" }

    it "is saved" do
      expect(teacher).to be_valid
      expect(Teacher.count).to eq(1)
    end
  end

end

