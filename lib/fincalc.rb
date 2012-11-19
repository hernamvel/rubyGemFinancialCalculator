# FinCalc is a class with methods to perform basic financial operations
# It works inspired in the HP-12 financial calclulator.  Feel free to
# add more financial operations as needed
# Author:  Hernan Velasquez
class FinCalc
  # Interest rate
  attr_writer :i
  # Number of periods
  attr_writer :n  
  # Ammount of a constant payment in a cash flow
  attr_writer :pmt
  # Ammount of the i-esm paymanent in a no-constant cash flow 
  attr_writer :cfi
  # To be used to calculate the NPV of a cash flow.  The internalo period counter
  attr_reader :periodCounter
  
  # Class constructor.  Clear the calculator
  def initialize
    clear
  end

  # Method to clear the calculator.  Set all variables in their defaults
  def clear
    @i = 0
    @n = 0
    @pmt = 0
    @periodCounter = 1
    @cfi = Array.new
    @cfi[0] = 0
  end
  
  # Set the cashflow value for period 0
  def cfPeriod0 (pValue)
    @cfi[0] = pValue
  end

  # Set the cashflow value for period i
  def cfiPeriodi (pValue)
    @cfi[@periodCounter] = pValue
    @periodCounter = @periodCounter + 1
  end

  # Calculate the present value of an annuity based on the attributes values already set
  def calculateAnnuity
    rate = @i /100.0
    @pmt*((1 - (1 / ((1 + rate)**@n))) / rate)
  end

  # Calculates the present value of a perpetuity taking the attribute's values
  def calculatePerpetuityPV
    return @pmt / (@i / 100.0)
  end
  
  # Static method to calculate the present value of a perpetuity taking the attribute's values
  def self.calculatePerpetuityPV (pPaymentValue, pInterestRate)
    i = (pInterestRate / 100.0)
    return pPaymentValue / i
  end
  
  # Calculates the Net Present Value of a cashflow
  def NPV 
    npv = 0;
    rate = @i / 100.0;
    j = 0
    while j < @periodCounter
      val = @cfi[j]  / (1+rate)**j
      npv = npv + val
      j = j+1
    end
    return npv
  end
  
end
