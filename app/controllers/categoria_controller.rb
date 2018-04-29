class CategoriaController < ApplicationController
  def index
     @categoria = Categorium.all
  end

  def new
    @categoria = Categorium.new
  end

   def create
     @categoria = Categorium.new(categoria_params)
     if @categoria.save
         redirect_to categoria_path
     else
       render :new
     end
   end

   def edit
      @categoria = Categorium.find(params[:id])
   end

   def update
     @categoria = Categorium.find(params[:id])
     if @categoria.update(categoria_params)
       redirect_to categoria_path
     else
        render :edit
      end
   end

   def delete
     @categoria = Categorium.find(params[:id])
     @categoria.destroy
      redirect_to categoria_path
   end

   private
   def categoria_params
   params.require(:categorium).permit(:cod_cate, :nom_des)
   end

end
