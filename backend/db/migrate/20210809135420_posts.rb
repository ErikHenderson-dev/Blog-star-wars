class Posts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :referencial
      t.string :titulo_post
      t.timestamp :data_post
      t.text :conteudo_post
      t.string :excerto_post
      t.text :imagem_post
      t.timestamp :publicado_post
      t.string :autor_post
      t.integer :categoria_post
    end
  end
end
