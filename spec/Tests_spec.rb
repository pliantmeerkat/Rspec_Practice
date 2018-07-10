require_relative '../Program.rb'

# simple test for int in = int out
describe "test_1" do
  it "returns a value of one" do
    value = test_1(1)
    expect(value).to eq(1)
  end
end

# simpe test for int out = 1 + int in
describe  "test_2" do
  x = 4
  it "returns a value of #{x + 1}" do
    value = test_2(x)
    expect(value).to eq(x + 1)
  end
end

# more complex test using fixed input instances
describe "test_3" do
  before(:each) do # creating our input instance
    @input = 1234567
  end
  it "returns correct output" do
    expect(test_3(@input)).to eq ["1", "2", "3", "4", "5", "6", "7"]
  end
  it "is the correct length" do
    expect(test_3(@input).length).to eq 7
  end
end
