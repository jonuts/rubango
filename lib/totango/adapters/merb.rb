module Totango
  module Adapters
    module Merb
      extend Totango::Adapters::Base

      register_adapter :merb
      hook_method :after
      action_finder :action_name

      sp_default :activity, proc { action_name }
      sp_default :module,   proc { controller_name }
    end
  end
end

