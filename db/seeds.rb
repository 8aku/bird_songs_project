BirdSong.destroy_all
Bird.destroy_all
Location.destroy_all
Country.destroy_all
License.destroy_all
Provider.destroy_all
Type.destroy_all

csv_file = Rails.root + 'db/birdsong_metadata.csv'

birdsongs = SmarterCSV.process(csv_file)

birdsongs.each do |birdsong|
   bird = Bird.create(
      common_name: birdsong[:english_cname],
      genus: birdsong[:genus],
      species: birdsong[:species]
      )
   bird.save

   country = Country.create(
      country: birdsong[:country]
      )
   country.save

   location = Location.create(
      longitude: birdsong[:longitute],
      latitude: birdsong[:latitude])
      location.country = Country.find_or_create_by(country: birdsong[:country])
      
   location.save

   license = License.create(
      license_url: birdsong[:license]
      )
   license.save

   provider = Provider.create(
      provider_name: birdsong[:who_provided_recording]
      )
   provider.save

   song_type = Type.create(
      type_name: birdsong[:type]
      )
   song_type.save

song = BirdSong.create(
   audio_file: birdsong[:file_id]
   )
   song.country = Country.find_by(country: birdsong[:country])
   song.location = Location.find_by(latitude: birdsong[:latitude],
      longitude: birdsong[:longitute])
   song.type = Type.find_by(type_name: birdsong[:type])
   song.provider = Provider.find_by(provider_name: birdsong[:who_provided_recording])
   song.bird = Bird.find_by(common_name: birdsong[:english_cname])
   song.license = License.find_by(license_url: birdsong[:license])

   song.save
end


#country_csv_file = Rails.root + 'db/country-keyword-list.csv'

#countries = SmarterCSV.process(country_csv_file)

#countries.each do |country|
   #country = Country.create(
      #country: country)
   #country.save
#end

  20.times do
   fake_provider = Provider.create(
      provider_name: Faker::Name.name)
   fake_provider.save
  end