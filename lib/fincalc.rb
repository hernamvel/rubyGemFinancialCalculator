class FinCalc

  attr_writer :i
  attr_writer :pmt
  attr_writer :cfi
  

  def initialize
    clear
  end

  def clear
    @i = 0
    @pmt = 0
    @cfi = Array.new
  end

  # Calculates the present value of a perpetuity taking the attribute's values
  def calculatePerpetuityPV
    return @pmt / (@i / 100.0)
  end
  
  # Calculates the present value of a perpetuity taking the attribute's values
  def self.calculatePerpetuityPV (pPaymentValue, pInterestRate)
    i = (pInterestRate / 100.0)
    return pPaymentValue / i
  end
end
