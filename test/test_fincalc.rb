require 'test/unit'
require 'fincalc'

class FinCalcTest < Test::Unit::TestCase

  def test_perpetuity_static
    assert_equal 10000.0, FinCalc.calculatePerpetuityPV(100, 1)
  end

  def test_perpetuity_nostatic
    f = FinCalc.new
    f.pmt = 100
    f.i = 1
    assert_equal 10000.0, f.calculatePerpetuityPV
  end

  def test_npv_2periods
    f = FinCalc.new
    f.i = 10
    f.cfPeriod0 -50.0
    f.cfiPeriodi 100
    assert_equal 40.90909090909091, f.NPV
  end
  
  def test_npv_5periods
    f = FinCalc.new
    f.i = 10
    f.cfPeriod0 -50.0
    f.cfiPeriodi 60
    f.cfiPeriodi -30
    f.cfiPeriodi 10
    f.cfiPeriodi 20
    assert_equal 0.925483232019662, f.NPV
  end
  
  def test_clear
    f = FinCalc.new
    f.i = 10
    f.cfPeriod0 -50.0
    f.cfiPeriodi 100
    assert_equal 40.90909090909091, f.NPV
    f.clear  
    f.i = 10
    f.cfPeriod0 -50.0
    f.cfiPeriodi 60
    f.cfiPeriodi -30
    f.cfiPeriodi 10
    f.cfiPeriodi 20
    assert_equal 0.925483232019662, f.NPV
  end
  
  def test_annuity
    f = FinCalc.new
    f.i = 10.0
    f.pmt = 500
    f.n = 12
    assert_equal 3406.8459114482175, f.calculateAnnuity
  end
end
