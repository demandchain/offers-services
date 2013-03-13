module Deal::WorkflowStateMachine
  include Workflow

    workflow do
      state :submitted do
        event :approve, :transitions_to => :approved
        event :reject,  :transitions_to => :rejected
      end
      state :approved
      state :rejected
    end
end
