require 'minitest/autorun'
require 'policy'

class PolicyTest < Minitest::Test
  def test_fixture_decisions
    signal_case_1 = CopperParseSqlFlow::Signal.new(demand: 76, capacity: 107, latency: 19, risk: 12, weight: 4)
    assert_equal 146, CopperParseSqlFlow.score(signal_case_1)
    assert_equal 'review', CopperParseSqlFlow.classify(signal_case_1)
    signal_case_2 = CopperParseSqlFlow::Signal.new(demand: 65, capacity: 101, latency: 18, risk: 6, weight: 13)
    assert_equal 193, CopperParseSqlFlow.score(signal_case_2)
    assert_equal 'accept', CopperParseSqlFlow.classify(signal_case_2)
    signal_case_3 = CopperParseSqlFlow::Signal.new(demand: 74, capacity: 71, latency: 12, risk: 6, weight: 12)
    assert_equal 195, CopperParseSqlFlow.score(signal_case_3)
    assert_equal 'accept', CopperParseSqlFlow.classify(signal_case_3)
  end
end
