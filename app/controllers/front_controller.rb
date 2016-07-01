class FrontController < ApplicationController
  def index
  end

  def thank_you
  	@lead = Lead.new(email: params[:email], subject: params[:subject], message: params[:message])
  	@thanks_message = ""
  	@all_leads = Lead.all()

  	if @lead.save
  		@thanks_message = "Gracias!, has registrado tu email #{params[:email]} correctamente"
  	else
  		redirect_to front_index_path,
  			notice: "Hubo un error registrando tu email"
  	end

  end
end
