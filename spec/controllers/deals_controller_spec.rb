require "spec_helper"

describe DealsController do
  before(:each) do
    #@region1 = FactoryGirl.create(:region)
    #FactoryGril.create(:deal, region_id: @region1.id)
    #FactoryGril.create(:deal, region_id: @region1.id)
    #
    #@region2 = FactoryGirl.create(:region)
    #FactoryGril.create(:deal, region_id: @region2.id)
    #FactoryGril.create(:deal, region_id: @region2.id)
    #
    #@region3 = FactoryGirl.build(:region)
  end

  it "Should return the deals for a region" do
    get :index, api_version: "1", slug: Deal.first.region.slug, use_route: "api"

    json_result = JSON.parse(response.body)
    json_result.length.should >= 1
  end

  it "Should return an error if the region doesn't exist" do
    fake_region = (("a".."z").to_a.join("") * 100).split("").sample(75).join("")
    get :index, api_version: "1", slug: fake_region, use_route: "api"

    response.should_not be_success
    json_result = JSON.parse(response.body)
    json_result["errors"].should eq(I18n.t("bad_region", region_slug: fake_region))
  end

  it "Should return an error if the API version isn't supported" do
    get :index, api_version: "2", slug: Region.first.slug, use_route: "api"

    response.should_not be_success
    json_result = JSON.parse(response.body)
    json_result["errors"].should eq(I18n.t("bad_version", api_version: "2"))
  end
end