class CreateArmadors < ActiveRecord::Migration[6.0]
  def change
    create_table :armadors do |t|
      t.string :nome
      t.string :tel
      t.string :agente
      t.string :pais
      t.text :morada
      t.integer :status

      t.timestamps
    end
  end
end
