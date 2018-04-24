require "rubocop"

module RuboCop
  module Cop
    module Lint
      class NoKeywordArgs < Cop
        def on_kwarg(node)
          add_offense(node, message: 'Do not use keyword arguments')
        end
      end
    end
  end
end
