class CreateDelegations < ActiveRecord::Migration[6.0]
  def change
    create_table :delegations do |t|
      t.string :nome
      t.string :endereco
      t.string :tel
      t.string :email
      t.string :cp
      t.string :provincia
      t.string :municipio
      t.string :comuna
      t.integer :status

      t.timestamps
    end
  end
end
