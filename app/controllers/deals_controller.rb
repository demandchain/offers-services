class DealsController < ApplicationController
  def index
    if (params[:api_version].to_i >= 1 && params[:api_version].to_i <= 1)
      deal_region = Region.where(slug: params[:slug]).first
      if (deal_region)
        render json: deal_region.deals.to_json
      else
        render json: { errors: I18n.t("bad_region", region_slug: params[:slug]) }, status: 404
      end
    else
      render json: { errors: I18n.t("bad_version", api_version: params[:api_version]) }, status: 404
    end
  end
end