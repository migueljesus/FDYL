class CreateCategoria < ActiveRecord::Migration[5.1]
  def change
    create_table :categoria do |t|
      t.string :cod_cate
      t.string :integer
      t.string :nom_des
      t.string :integer

      t.timestamps
    end
  end
end
