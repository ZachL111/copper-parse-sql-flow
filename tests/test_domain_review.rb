require 'minitest/autorun'
require 'domain_review'

class DomainReviewTest < Minitest::Test
  def test_domain_lane
    item = CopperParseSqlFlow::DomainReview.new(signal: 45, slack: 24, drag: 16, confidence: 61)
    assert_equal 127, CopperParseSqlFlow.domain_review_score(item)
    assert_equal "watch", CopperParseSqlFlow.domain_review_lane(item)
  end
end
