json.extract! equipement, :id, :latitude, :longitude, :name, :adresse, :cp, :ville, :type_equipement, :created_at, :updated_at
json.url equipement_url(equipement, format: :json)
