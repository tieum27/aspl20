json.extract! activite_aquatique, :id, :nom, :jour, :debut, :fin, :equipement_id, :created_at, :updated_at
json.url activite_aquatique_url(activite_aquatique, format: :json)
