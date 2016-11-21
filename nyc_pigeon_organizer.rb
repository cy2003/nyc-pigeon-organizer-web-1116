def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |attribute, info|
    # attribute = :color, :gender, :lives  info = :purple, :male, :subway
    info.each do |key, name|
      # key = :purple, :male, :subway  name = ["Theo", "Peter Jr.", "Lucky"]
      name.each do |bird|
        if new_hash[bird] == nil  #if new_hash[bird] == nil means there is no key with that bird
          new_hash[bird] = {}     #this creates a key with that birds name (e.g. new_hash = {Theo => {}})
        end
        if new_hash[bird][attribute] == nil
          new_hash[bird][attribute] = []      # need to set this to an array
        end
        new_hash[bird][attribute] << key.to_s  # need to change the symbol into a string
      end
    end
  end
  new_hash
end
