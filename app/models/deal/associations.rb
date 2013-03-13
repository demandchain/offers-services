module Deal::Associations
  extend ActiveSupport::Concern

  included do
    attr_accessible :end_at, :num_available, :price, :region_id, :slug, :start_at, :title, :value, :workflow_state

    belongs_to :region
  end

end
