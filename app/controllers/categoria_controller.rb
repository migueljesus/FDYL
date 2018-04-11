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

   private
   def categoria_params
   params.require(:categorium).permit(:cod_cate, :nom_des)
   end

end
