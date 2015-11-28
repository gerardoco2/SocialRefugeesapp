class RefugeesController < ApplicationController
	before_action :find_refugee, only: [:show, :edit, :update, :destroy]

	def index
		@refugees = Refugee.all.order("created_at DESC")
	
	end


	def show

		
	end

	def edit
		
	end

	def update
		if @refugee.update(refugee_params)
			redirect_to refugee_path(@refugee)
		else
			render 'edit'
		end

	end

	def destroy
		@refugee.destroy

		redirect_to root_path
	end


	def new
		@refugee = Refugee.new
	end

	def create
		@refugee = Refugee.new(refugee_params)
		if @refugee.save
			redirect_to root_path
		else
			render 'new'
		end
 	end



 	private

 	def refugee_params
 		params.require(:refugee).permit( :name,:age, :eye_color, :name_of_mother,:picture)
 		
 	end

 	def find_refugee
 		@refugee = Refugee.find(params[:id])
 		
 	end

end
