json.extract! desembarkation, :id, :embarkation_id, :n_movimento, :porto_origem, :porto_destino, :armador_id, :user, :email, :data_entrada, :hora_entrada, :data_saida, :hora_saida, :nome_comandante, :estadia_prev, :estadia_final, :nacionalida, :tipo_doc, :n_doc, :data_emissao, :data_validade, :status, :created_at, :updated_at
json.url desembarkation_url(desembarkation, format: :json)
