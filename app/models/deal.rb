class Deal < ActiveRecord::Base
  include Associations
  include ModelHooks
  include WorkflowStateMachine

  def generate_slug
    return unless region
    if self.slug.blank?
      begin
        count = (count || 0) + 1
        new_slug = "#{region.slug}-#{count}".downcase
      end until new_slug && Deal.where(:slug => new_slug).empty?
      self.slug = new_slug
    end
  end
end
