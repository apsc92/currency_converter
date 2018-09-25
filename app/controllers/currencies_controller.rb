class CurrenciesController < ApplicationController
  before_action: load_currencies

  def convert
    result = @from_currency.conversion_rate(@to_currency) * currency_params[:input]
    message = I18n.t("currency.converted")
    render json: { result: result, message: message }, status: :ok
  end

  private

  def currency_params
    params.require(:currency).permit(:from, :to, :input)
  end

  def load_currencies
    @from_currency = Currency.where(currency_params[:from]).first
    @to_currency = Currency.where(currency_params[:to]).first
  end
end
