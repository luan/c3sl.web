#encoding: utf-8
namespace :db do

  desc "This populate database"
  task :populate => :environment do
    #http://rubydoc.info/github/stympy/faker/master/frames
    require 'faker'

    [Category, Article, Mirror, Person, Research, Project].each(&:destroy_all)

    10.times do
      Article.create(:title => Faker::Name.title,
                     :headline => Faker::Name.title,
                     :body =>  Faker::Lorem.paragraphs(3),
                     :published_at => rand(3.years).ago,
                     :image => File.open(Dir.glob(File.join(Rails.root, 'spec/images', '*')).sample)
                    )
    end

    10.times do
      Mirror.create(:name => Faker::Name.name,
                    :description =>  Faker::Lorem.paragraph,
                    :link => "http://#{Faker::Internet.domain_name}",
                    :image => File.open(Dir.glob(File.join(Rails.root, 'spec/images', '*')).sample)
                    )
    end

    researchers = Category.create :name => "Pesquisadores"
    team = Category.create :name => "Equipe Técnica"
    ex_people =Category.create :name => "Ex-integrantes"

    science = Category.create :name => "Ciência da Computação", :parent_id => team.id
    communication = Category.create :name => "Comunicação", :parent_id => team.id
    design = Category.create :name => "Design", :parent_id => team.id

    [ex_people.id, science.id, communication.id, design.id].each do |id|
      create_people 10, id
    end

    create_people 10, researchers.id, true

    5.times do
      Research.create(
        :title => Faker::Name.title,
        :description => Faker::Lorem.paragraphs(2),
        :image => File.open(Dir.glob(File.join(Rails.root, 'spec/images', '*')).sample)
      )
    end
    fsr = Research.create(:title => 'Software Livre', :description => '')

    Research.all.each do |research|
      5.times do
        Project.create(
          :title => Faker::Name.title,
          :body => Faker::Lorem.paragraphs(2),
          :research_id => research.id
        )
      end
    end

    5.times do
      Project.create(
        :title => Faker::Name.title,
        :body => Faker::Lorem.paragraphs(2),
        :research_id => fsr.id
      )
    end
  end

  def create_people(n, category, options = nil)
    n.times do
      Person.create(:name => Faker::Name.name,
                    :link => options && "http://#{Faker::Internet.domain_name}",
                    :degree => options && Faker::Name.title,
                    :category_id => category
                   )
    end
  end


  namespace :populate do
    desc "This drops the db, builds the db, and seeds the data."
    task :reset => [:environment, 'db:reset', 'db:populate']
  end
end
