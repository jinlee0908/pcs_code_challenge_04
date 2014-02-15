require "spec_helper"

require "parse.rb"

require "spec_helper"

require "parse.rb"

describe Parse do
  it "should parse number without country code" do   
  return_array = Parse.parse_number("345-234-1244-x342")
  expect(return_array).to eq(["","345","234","1244","342"])
  end

  it "should parse number without an ext" do   
    return_array = Parse.parse_numbers("1-345-234-1244")
    expect(return_array).to eq(["1","345","234","1244",""])
  end

  it "should parse number without an ext" do   
    return_array = Parse.parse_numbers("1-345-234-1244")
    expect(return_array).to eq(["1","345","234","1244",""])
  end

  it "should parse number without country code or ext" do   
    return_array = Parse.parse_numbers("345-234-1244")
    expect(return_array).to eq(["","345","234","1244",""])
  end

  it "should parse number with () as a separator" do   
    return_array = Parse.parse_numbers("(345)234-1244")
    expect(return_array).to eq(["","345","234","1244",""])
  end

  it "should parse number with . as a separator" do   
    return_array = Parse.parse_numbers("1.345.234.1244.x345")
    expect(return_array).to eq(["1","345","234","1244","345"])
  end

  it "should parse number with space as a separator" do   
    return_array = Parse.parse_numbers("1 345 234 1244 x345")
    expect(return_array).to eq(["1","345","234","1244","345"])
  end

end