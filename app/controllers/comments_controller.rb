class CommentsController < ApplicationController
	def create
    @erica = Erica.find(params[:erica_id])
    @comment = @erica.comments.create(comment_params)
    redirect_to erica_path(@erica)
	end

	def destroy
    @erica = Erica.find(params[:erica_id])
    @comment = @erica.comments.find(params[:id])
    @comment2.destroy
    redirect_to erica_path(@erica)
  	end

  private
    def comment_params
      params.require(:comment).permit(:friend_name, :suggested_companion, :reason, :erica_id)
    end
end