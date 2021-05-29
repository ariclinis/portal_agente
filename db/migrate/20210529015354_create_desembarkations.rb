class CreateDesembarkations < ActiveRecord::Migration[6.0]
  def change
    create_table :desembarkations do |t|
      t.references :embarkation, null: false, foreign_key: true
      t.integer :n_movimento
      t.string :porto_origem
      t.string :porto_destino
      t.references :armador, null: false, foreign_key: true
      t.references :user
      t.string :tel
      t.string :email
      t.string :data_entrada
      t.string :hora_entrada
      t.string :data_saida
      t.string :hora_saida
      t.string :nome_comandante
      t.string :estadia_prev
      t.string :estadia_final
      t.string :nacionalida
      t.string :tipo_doc
      t.string :n_doc
      t.string :data_emissao
      t.string :data_validade
      t.integer :status

      t.timestamps
    end
  end
end
