json.array!(@class_jars) do |class_jar|
  json.extract! class_jar, :id, :total, :progress, :name, :type, :uid
  json.url class_jar_url(class_jar, format: :json)
end
