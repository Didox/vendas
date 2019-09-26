class HomeController < ApplicationController
  def index

  	# mais_de_um_ano = Usuario.where(id: 2).where("created_at < ? ", Time.zone.now - 1.year).count > 0
  	# fiado = Pedido.where(fiado:true).where(usuario_id: 2).count > 0

  	@receitas = Receita.where("created_at BETWEEN ? AND ?", Time.zone.now.beginning_of_month, Time.zone.now.end_of_month).sum(:valor)
  	@despesas = Despesa.where("created_at BETWEEN ? AND ?", Time.zone.now.beginning_of_month, Time.zone.now.end_of_month).sum(:valor)
  	@pedidos = Pedido.where("created_at BETWEEN ? AND ?", Time.zone.now.beginning_of_month, Time.zone.now.end_of_month).sum(:valor_total)
  end
end
