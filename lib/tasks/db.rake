namespace :db do

  desc "This populate database"
  task :populate => :environment do
    #http://rubydoc.info/github/stympy/faker/master/frames
    require 'faker'

    Article.delete_all
    10.times do
      Article.create(:title => Faker::Name.title,
                     :headline => Faker::Name.title,
                     :body =>  Faker::Lorem.paragraphs(3),
                     :published_at => rand(3.years).ago)
    end
  end

  namespace :populate do
    desc "This drops the db, builds the db, and seeds the data."
    task :reset => [:environment, 'db:reset', 'db:populate']
  end
end
