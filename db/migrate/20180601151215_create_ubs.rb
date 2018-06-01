class CreateUbs < ActiveRecord::Migration[5.1]
  def change
    create_table :ubs do |t|
      t.decimal :vlr_latitude, precision: 10, scale: 8
      t.decimal :vlr_longitude, precision: 11, scale: 8
      t.integer :cod_munic, null:false
      t.integer :cod_cnes, null:false
      t.string :nom_estab, null:false
      t.string :dsc_endereco
      t.string :dsc_bairro
      t.string :dsc_cidade
      t.string :dsc_telefone
      t.string :dsc_estrut_fisic_ambiencia
      t.string :dsc_adap_defic_fisic_idosos
      t.string :dsc_equipamentos
      t.string :dsc_medicamentos

      t.timestamps
    end
  end
end
