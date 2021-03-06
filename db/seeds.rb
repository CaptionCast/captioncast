# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
bowmer = Venue.find_or_create_by!(name: 'Angus Bowmer Theatre')
thomas = Venue.find_or_create_by!(name: 'Thomas Theatre')
lizzy  = Venue.find_or_create_by!(name: 'Allen Elizabethan Theatre')


Work.create!(work_name: "Much Ado about Nothing") { |work| work.venue = bowmer; work.language = "en" }
Work.create!(work_name: "Guys and Dolls") { |work| work.venue = bowmer; work.language = "en" }
Work.create!(work_name: "Fingersmith") { |work| work.venue = bowmer; work.language = "en" }
Work.create!(work_name: "Secret Love in Peach Blossom Land") { |work| work.venue = bowmer; work.language = "en" }
Work.create!(work_name: "Sweat") { |work| work.venue = bowmer; work.language = "en" }

Work.create!(work_name: "Pericles") { |work| work.venue = thomas; work.language = "en" }
Work.create!(work_name: "Long Day's Journey into Night") { |work| work.venue = thomas; work.language = "en" }
Work.create!(work_name: "The Happiest Song Plays Last") { |work| work.venue = thomas; work.language = "en" }

Work.create!(work_name: "Antony and Cleopatra") { |work| work.venue = lizzy; work.language = "en" }
Work.create!(work_name: "Head Over Heels") { |work| work.venue = lizzy; work.language = "en" }
Work.create!(work_name: "The Count of Monte Cristo") { |work| work.venue = lizzy; work.language = "en" }


Work.create!(work_name: "Much Ado about Nothing") { |work| work.venue = bowmer; work.language = "es" }
Work.create!(work_name: "Guys and Dolls") { |work| work.venue = bowmer; work.language = "es" }
Work.create!(work_name: "Fingersmith") { |work| work.venue = bowmer; work.language = "es" }
Work.create!(work_name: "Secret Love in Peach Blossom Land") { |work| work.venue = bowmer; work.language = "es" }
Work.create!(work_name: "Sweat") { |work| work.venue = bowmer; work.language = "es" }

Work.create!(work_name: "Pericles") { |work| work.venue = thomas; work.language = "es" }
Work.create!(work_name: "Long Day's Journey into Night") { |work| work.venue = thomas; work.language = "es" }
Work.create!(work_name: "The Happiest Song Plays Last") { |work| work.venue = thomas; work.language = "es" }

Work.create!(work_name: "Antony and Cleopatra") { |work| work.venue = lizzy; work.language = "es" }
Work.create!(work_name: "Head Over Heels") { |work| work.venue = lizzy; work.language = "es" }
Work.create!(work_name: "The Count of Monte Cristo") { |work| work.venue = lizzy; work.language = "es" }
