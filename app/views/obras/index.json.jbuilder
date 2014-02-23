json.array!(@obras) do |obra|
  json.extract! obra, :id, :titulo, :autor, :descripcion, :calificacion, :imagen
  json.url obra_url(obra, format: :json)
end
