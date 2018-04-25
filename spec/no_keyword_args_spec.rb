RSpec.describe RuboCop::Cop::Lint::NoKeywordArgs do
  subject(:cop) { described_class.new }

  describe 'Method definitions by def keyword' do
    it {
      expect_offense(<<~RUBY)
        def foo(bar:); end
                ^^^^ Do not use keyword arguments
      RUBY
    }

    it {
      expect_offense(<<~RUBY)
        def foo(bar: nil); end
                ^^^^^^^^ Do not use keyword arguments
      RUBY
    }

    it { expect_no_offenses('def foo(bar); end') }
  end

  describe 'Method definitions by define_method' do
    it {
      expect_offense(<<~RUBY)
        define_method :foo do |bar:|; end
                               ^^^^ Do not use keyword arguments
      RUBY
    }

    it {
      expect_offense(<<~RUBY)
        define_method :foo do |bar: nil|; end
                               ^^^^^^^^ Do not use keyword arguments
      RUBY
    }

    it { expect_no_offenses('define_method :foo do |bar|; end') }
  end
end
