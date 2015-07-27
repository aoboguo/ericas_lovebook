class EricasController < ApplicationController
	def index
		@ericas = Erica.all

	end

	def show
		@erica = Erica.find(params[:id])
		@boys = @erica.boys
	end

	def new
		@erica = Erica.new
		
	end 

	def create
		@erica = Erica.new(erica_params)

		if @erica.save
			redirect_to erica_path(@erica)
		else
			render :new
		end
	end

	def edit
		@erica = Erica.find(params[:id])
	end

	def update
		@erica = Erica.find(params[:id])

		if @erica.update(erica_params)
			redirect_to erica_path(@erica)
		else
			render :edit
		end
	end

	def destroy
    	@erica = Erica.find(params[:id])
    	@erica.destroy
    	redirect_to ericas_path
  end

private 
	def erica_params
		params.require(:erica).permit(:name, :description, :objective, :sexiness)
	end 

end