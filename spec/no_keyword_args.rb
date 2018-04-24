RSpec.describe RuboCop::Cop::Lint::NoKeywordArgs do
  subject(:cop) { described_class.new }

  it 'adds an offense' do
    expect_offense(<<~RUBY)
      def foo(bar:); end
              ^^^^ Do not use keyword arguments
    RUBY
  end

  it 'does not add an offense' do
    expect_no_offenses('def foo(bar); end')
  end
end
