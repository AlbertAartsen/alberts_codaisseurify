Artist.destroy_all
Song.destroy_all
Photo.destroy_all

beethoven   = Artist.create!(first_name: "Ludwig", last_name: "van Beethoven", genre: "Classical" ,nationality: "German")
mozart      = Artist.create!(first_name: "Amadeus", last_name: "Mozart", genre: "Classical", nationality: "Austrian")
monteverdi  = Artist.create!(first_name: "Claudio", last_name: "Monteverdi", genre: "Renaissance", nationality: "Italian")
albinoni    = Artist.create!(first_name: "Tomaso", last_name: "Albinoni", genre:  "Baroque", nationality: "Italian")
faure       = Artist.create!(first_name: "Gabriel", last_name: "Faure", genre: "Romantic", nationality: "French")
schubert    = Artist.create!(first_name: "Franz", last_name: "Schubert", genre: "Romantic", nationality: "Austrian")

#beethoven
song = Song.create!(name: "Symphony No.9 in D minor Op.125", length: 90.18, year: 1823, artist: beethoven)
song = Song.create!(name: "Symphony no. 7 in A major", length: 30.45, year: 1814, artist: beethoven)
song = Song.create!(name: "Piano Sonatas 30 E-Dur", length: 8.37, year: 1798, artist:beethoven)

#mozart
song = Song.create!(name: "Die Entführung aus dem Serail", length: 184.34, year: 1765, artist: mozart)
song = Song.create!(name: "The Requiem in D minor, K. 626", length: 54.43, year: 1787, artist: mozart)
song = Song.create!(name: "Die Zauberflöte, K. 620", length: 255.43, year: 1798, artist: mozart)

#monteverdi
song = Song.create!(name: "Lamento Della Ninfa", length: 45.21, year: 1576, artist: monteverdi)
song = Song.create!(name: "Vespro della Beata Vergine", length: 76.34, year: 1587, artist: monteverdi)
song = Song.create!(name: "Lamento d' Arianna", length: 12.03, year: 1600, artist: monteverdi)

#albinoni
song = Song.create!(name: "Adagio in G minor for organ and strings", length: 4.55, year: 1789, artist: albinoni)
song = Song.create!(name: "Larghetto from Concerto No. 6 in D major, Op. 10", length: 17.66, year: 1766, artist: albinoni)
song = Song.create!(name: "Adagio from Concerto for violin in B flat major", length: 8.01, year: 1801, artist: albinoni )

#faure
song = Song.create!(name: "Requiem", length: 112.33, year: 1877, artist: faure)
song = Song.create!(name: "", length: 76.47, year: 1898, artist: faure)
song = Song.create!(name: "", length: 12.02, year: 1856, artist: faure )

#schubert
song = Song.create!(name: "Piano Sonata in D major, Op.53, D.850", length: 7.23, year: 1798, artist: schubert)
song = Song.create!(name: "Winterreise", length: 45.31, year: 1790, artist: schubert)
song = Song.create!(name: "Trio Pour Piano, Violon et Violoncelle no. 2 en mi Bemol, Op. 100", length: 33.55 , year: 1787, artist: schubert)

#photos
photo_beethoven   = Photo.create!(remote_image_url:"http://res.cloudinary.com/dvhogaeis/image/upload/v1508028992/beethoven_n4rfxl.jpg", artist: beethoven)
photo_mozart      = Photo.create!(remote_image_url:"http://res.cloudinary.com/dvhogaeis/image/upload/v1508028991/mozart_hfylmz.jpg", artist: mozart)
photo_faure       = Photo.create!(remote_image_url:"http://res.cloudinary.com/dvhogaeis/image/upload/v1508028986/faure_ahxfej.jpg", artist: faure)
photo_monteverdi  = Photo.create!(remote_image_url:"http://res.cloudinary.com/dvhogaeis/image/upload/v1508028992/monteverdi_ribhso.jpg", artist: monteverdi)
photo_albinoni    = Photo.create!(remote_image_url:"http://res.cloudinary.com/dvhogaeis/image/upload/v1508028985/albinoni_owol73.jpg", artist: albinoni)
photo_schubert    = Photo.create!(remote_image_url:"http://res.cloudinary.com/dvhogaeis/image/upload/v1508028995/schubert_rxta1t.jpg", artist: schubert)
