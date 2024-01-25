require_relative "../animal"
require_relative '../lion'
require_relative '../meerkat'
require_relative '../warthog'

describe Animal do
  describe "#initialize" do
    it "creates an Animal instance with the name Babe" do
      animal = Animal.new("Babe")
      expect(animal.name).to eq('Babe')
    end
  end

  describe "#phyla" do
    it "return array of all phyla" do
      expect(Animal.phyla.size).to eq(10)
    end
  end

  describe "#eat(food)" do
    it "return string containing the name and food" do
      timon = Meerkat.new('Timon')
      expect(timon.eat('scorpion')).to eq('Timon eats a scorpion')
    end
  end
end

describe Lion do
  describe "#initialize" do
    it "creates an instance of Lion by inheriting it from the Animal class" do
      simba = Lion.new("Simba")
      expect(simba.name).to eq('Simba')
    end
  end

  describe "#eat(food)" do
    it "it returns a modified string of the method" do
      simba = Lion.new("Simba")
      expect(simba.eat('gazelle')).to eq('Simba eats a gazelle. Law of the Jungle!')
    end
  end

  describe "#talk" do
    it "it returns a string speaking correctly" do
      simba = Lion.new("Simba")
      expect(simba.talk).to eq('Simba roars')
    end
  end
end

