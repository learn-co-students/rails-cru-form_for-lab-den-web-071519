# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.destroy_all
Genre.destroy_all
Song.destroy_all

josh = Artist.create(name: "Josh", bio: "Been round the withers.")
george = Artist.create(name: "George", bio: "Beats mode.")
wendy = Artist.create(name: "Wendy", bio: "Blast from the past.")

punk = Genre.create(name: "Punk")
happy = Genre.create(name: "Happy")

Song.create(name: "Josh Wild Song", artist_id: josh[:id], genre_id: punk[:id])
Song.create(name: "George Wild Song", artist_id: george[:id], genre_id: punk[:id])
Song.create(name: "Wendy Happy Song", artist_id: wendy[:id], genre_id: happy[:id])
Song.create(name: "Wendy Wild Song", artist_id: wendy[:id], genre_id: punk[:id])
