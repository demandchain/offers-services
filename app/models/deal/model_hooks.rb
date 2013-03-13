module Deal::ModelHooks
  extend ActiveSupport::Concern

  included do
    before_validation(:on => :create) { generate_slug }
  end
end
