puts 'Beginning to seed'
 
  User.destroy_all
  Artwork.destroy_all
  ArtworkShare.destroy_all
  
  bao = User.create!(username: "Bao Tran")
  peter = User.create!(username: "Peter Yao")
  mrbean = User.create!(username: 'Mr.Bean')
  vanGogh = User.create!(username: 'Vincent van Gogh')
  picasso = User.create!(username: 'Pablo Picasso')
  daVinci = User.create!(username: 'Leonardo da Vinci')
  michelangelo = User.create!(username: 'Michelangelo')
  munch = User.create!(username: 'Edvard Munch')
 
  vg1 = Artwork.create!(title: 'Sorrow', image_url: 'https://en.wikipedia.org/wiki/File:Vincent_van_Gogh_-_Sorrow.jpg', artist_id: vanGogh.id)
  vg2 = Artwork.create!(title: 'Sunflowers', image_url: 'https://en.wikipedia.org/wiki/File:Vincent_Willem_van_Gogh_127.jpg', artist_id: vanGogh.id)
  vg3 = Artwork.create!(title: 'The Starry Night', image_url: 'https://en.wikipedia.org/wiki/File:Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg', artist_id: vanGogh.id)
  p1 = Artwork.create!(title: 'La Vie', image_url: 'https://en.wikipedia.org/wiki/File:La_Vie_by_Pablo_Picasso.jpg', artist_id: picasso.id)
  p2 = Artwork.create!(title: 'The Weeping Woman', image_url: 'https://en.wikipedia.org/wiki/File:Picasso_The_Weeping_Woman_Tate_identifier_T05010_10.jpg', artist_id: picasso.id)
  dv1 = Artwork.create!(title: 'Mona Lisa', image_url: 'https://en.wikipedia.org/wiki/File:Mona_Lisa,_by_Leonardo_da_Vinci,_from_C2RMF_retouched.jpg', artist_id: daVinci.id)
  dv2 = Artwork.create!(title: 'The Last Supper', image_url: 'https://en.wikipedia.org/wiki/File:%C3%9Altima_Cena_-_Da_Vinci_5.jpg', artist_id: daVinci.id)
  ma1 = Artwork.create!(title: 'The Creation of Adam', image_url: 'https://learnodo-newtonic.com/wp-content/uploads/2014/08/The-Creation-of-Adam-1512-Michelangelo.jpg', artist_id: michelangelo.id)
  munch1 = Artwork.create!(title: 'The Scream', image_url: 'https://www.edvardmunch.org/the-scream.jsp', artist_id: munch.id)
  mrbean1 = Artwork.create!(title: 'Mona Lisa', image_url: 'https://lh3.googleusercontent.com/-MCukyVH66q0/UpZ09Q__znI/AAAAAAAACgc/eHolej97ECE/w530-h856-n-rw/Mona%2BBeana.jpg', artist_id: mrbean.id)
 
  ArtworkShare.create!(viewer_id: mrbean.id, artwork_id: mrbean1.id)
  ArtworkShare.create!(viewer_id: mrbean.id, artwork_id: vg1.id)
  ArtworkShare.create!(viewer_id: mrbean.id, artwork_id: p1.id)
  ArtworkShare.create!(viewer_id: vanGogh.id, artwork_id: mrbean1.id)
  ArtworkShare.create!(viewer_id: picasso.id, artwork_id: mrbean1.id)
  ArtworkShare.create!(viewer_id: michelangelo.id, artwork_id: mrbean1.id)
  ArtworkShare.create!(viewer_id: munch.id, artwork_id: mrbean1.id)
  ArtworkShare.create!(viewer_id: bao.id, artwork_id: ma1.id)
  ArtworkShare.create!(viewer_id: bao.id, artwork_id: munch1.id)
  ArtworkShare.create!(viewer_id: bao.id, artwork_id: vg3.id)
  ArtworkShare.create!(viewer_id: daVinci.id, artwork_id: dv1.id)
  ArtworkShare.create!(viewer_id: munch.id, artwork_id: dv1.id)
 
 
  puts 'Finished seeding'