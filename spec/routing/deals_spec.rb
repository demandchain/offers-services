require "spec_helper"

describe "it should route deals appropriately" do
  it "should route to the deals controllers" do
    slug_val = Region.first.slug
    { get: "api/v1/#{slug_val}/deals" }.should route_to(action: "index", api_version: "1", slug: slug_val, controller: "deals")
  end
end