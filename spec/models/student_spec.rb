require 'rails_helper'

RSpec.describe Student, type: :model do

  it "has the username set correctly" do
    student = Student.new username:"Pasi"

    student.username.should == "Pasi"
  end

  it "is not saved without a password" do
    student = Student.create username:"Pasi"

    expect(student.valid?).to be(false)
    expect(Student.count).to eq(0)
  end

  describe "is not saved" do

    it "with password that's too short" do
      student = Student.create username: "Pasi", password: "A1"
      expect(student.valid?).to be(false)
      expect(Student.count).to eq(0)
    end

    it "with password that doesn't contain a non-letter character" do
      student = Student.create username: "Pasi", password: "abcdefgh"
      expect(student.valid?).to be(false)
      expect(Student.count).to eq(0)
    end

    it "without a proper password" do
      student = Student.create username: "Pasi"
      expect(student.valid?).to be(false)
      expect(Student.count).to eq(0)
    end
  end

  describe "with a proper password" do
    let(:student){ Student.create username:"Pasi", password:"Kissa1" }

    it "is saved" do
      expect(student).to be_valid
      expect(Student.count).to eq(1)
    end
  end

end
