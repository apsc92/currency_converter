require 'net/http'

namespace :currency do
  desc 'validate proposal booking entries'
  task fetch_latest_conversion_factor: :environment do
    begin
      uri = URI(Figaro.env.exchange_base_url + '?base=INR')
      res = Net::HTTP.get(uri)
      rates = JSON.parse(res)['rates']
      rates.keys.each do |currency_name|
        currency = Currency.find_or_initialize_by(name: currency_name)
        currency.conversion_factor = rates[currency_name]
        currency.save
      end
    rescue Exception => e
      Rails.logger.info("Exception: #{error.message}")
    end
  end
end
