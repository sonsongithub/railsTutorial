
require_relative 'friend'

describe Friend do 
  context "最初のテスト" do 
    before do
      @person = Friend.new "Yuichi", "Yoshida"
    end
    it "何かのテスト" do
      expect(@person).not_to eq nil
    end
  end
end