module Region::Associations
  extend ActiveSupport::Concern

  included do
    attr_accessible :name, :slug

    has_many :deals
  end

end
