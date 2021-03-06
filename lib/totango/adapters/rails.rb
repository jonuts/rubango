module Totango
  module Adapters
    module Rails
      extend Totango::Adapters::Base

      register_adapter :rails
      hook_method :after_filter
      action_finder :action_name

      sp_default :activity, proc { action_name }
      sp_default :module,   proc { controller_name }
    end
  end
end

