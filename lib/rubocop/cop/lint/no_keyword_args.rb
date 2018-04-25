require "rubocop"

module RuboCop
  module Cop
    module Lint
      class NoKeywordArgs < Cop
        def on_kwarg(node)
          add_offense(node, message: 'Do not use keyword arguments')
        end

        alias on_kwoptarg on_kwarg
      end
    end
  end
end
