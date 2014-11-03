json.array!(@puppy_dog_twos) do |puppy_dog_two|
  json.extract! puppy_dog_two, :id, :name, :breed, :cuteness
  json.url puppy_dog_two_url(puppy_dog_two, format: :json)
end
