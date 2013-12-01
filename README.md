#Associations
##Band
- belongs to city
- has demos
- has genres        through band_genres
- has instruments   through band_instruments
- has musicians     through band_musicians

##Cities
- has bands
- has musicians

##Demos
- belongs to band
- has genres        through demo_genres

##Genres
- has bands         through band_genres
- has demos         through demo_genres

##Instruments
- has bands         through band_instruments
- has musicians     through musician_instruments

##Musicians
- has bands         through band_musicians
- belongs to city
- has genres        through musician_genres
- has instruments   through musician_instruments
