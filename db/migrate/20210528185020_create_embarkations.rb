class CreateEmbarkations < ActiveRecord::Migration[6.0]
  def change
    create_table :embarkations do |t|
      t.string :nome
      t.string :matricula
      t.string :local_atracagem
      t.string :indicativo_chamada
      t.string :nr_imo
      t.string :data_contrucao
      t.string :estaleiro
      t.string :porto_registro
      t.string :bandeira_origem
      t.string :bandeira_actual
      t.integer :tipo_embarcacao_id
      t.integer :tipo_de_casco_id
      t.integer :tipo_classificacao_id
      t.integer :stado_da_embarcacao
      t.float :comprimento
      t.float :boca
      t.float :pontal
      t.string :tonelagem_bruto
      t.string :tonelagem_liquida
      t.float :lotacao
      t.float :nr_max_tripulante
      t.float :nr_min_tripulante
      t.integer :capitao_id
      t.references :armador, null: false, foreign_key: true
      t.integer :proprietario_id
      t.references :delegation, null: false, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end
