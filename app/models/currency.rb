class Currency < ApplicationRecord

  validates_presence_of :name, :conversion_factor
  validates_uniqueness_of :name


  def conversion_rate(to_currency)
    (1/self.conversion_factor) * to_currency.conversion_factor
  end
end
