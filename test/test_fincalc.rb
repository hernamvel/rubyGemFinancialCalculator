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


  def test_any_hello
    #assert_equal "hello world", Hola.hi("ruby")
  end

  def test_spanish_hello
    #assert_equal "hola mundo", Hola.hi("spanish")
  end
end
