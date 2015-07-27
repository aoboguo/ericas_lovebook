class BoysController < ApplicationController
	def show
		@erica = Erica.find(params[:erica_id])
		@boy = @erica.boys.find(params[:id])
	end

	def index
		@boys = Boy.all
	end

	def create
		@erica = Erica.find(params[:erica_id])
		@boy = @erica.boys.create(boy_params)
		if @boy.save
			redirect_to erica_path(@erica)
		else
			render :new
		end

	def new
		@erica = Erica.find(params[:erica_id])
		@boy = @erica.boys.new
	end

	def update
		@erica = Erica.find(params[:erica_id])
		@boy = @erica.boys.find(params[:id])
		if @boy.update(boy_params)
			redirect_to erica_boy_path(@erica, @boy)
		else
			render :edit
		end
	end

	def destroy	
		@erica = Erica.find(params[:erica_id])
		@boy = @erica.boys.find(params[:id])
		@boy.destroy
		redirect_to erica_path(@erica)
	end 

	def edit
		@erica = Erica.find(params[:erica_id])
		@boy = @erica.boys.find(params[:id])
	end

	private
		def boy_params
			params.require(:boy).permit(:name, :description, :pros, :cons, :level_of_adequacy)
		end

	end
end