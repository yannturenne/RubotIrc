require "test_helper"

class RubotircTest < Test::Unit::TestCase
    def test_version
        assert_equal "0.0.1", Rubotirc::VERSION
    end
end