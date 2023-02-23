require 'make_snippet'

RSpec.describe "make_snippet method" do
    it "retuns an empty string" do 
        result = make_snippet("")
        expect(result).to eq("")
    end
    it "returns a string with 5 words or less" do
        result = make_snippet("My middle name is Tolu")
        expect(result).to eq("My middle name is Tolu")
    end
    it "returns a string ending with '...' if words are more than five" do
        result = make_snippet("I wish I could sing like Beyonce")
        expect(result).to eq("I wish I could sing ...")
    end 
end