class HomeController < ApplicationController
  def index
  	@receitas = Receita.where("created_at BETWEEN ? AND ?", Time.zone.now.beginning_of_month, Time.zone.now.end_of_month).sum(:valor)
  	@despesas = Despesa.where("created_at BETWEEN ? AND ?", Time.zone.now.beginning_of_month, Time.zone.now.end_of_month).sum(:valor)
  	@pedidos = Pedido.where("created_at BETWEEN ? AND ?", Time.zone.now.beginning_of_month, Time.zone.now.end_of_month).sum(:valor_total)
  end
end
