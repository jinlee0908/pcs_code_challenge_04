require "spec_helper"

require "parse.rb"

describe Parse do
  it "should parse email with name '@' and domain" do 
    return_array = Parse.parse_email("strawhatalexander@gmail.com")
    expect(return_array).to eq(["strawhatalexander@gmail.com"])
  end	
end