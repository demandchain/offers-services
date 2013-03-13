# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

    def standard_regions
      %w( atlanta austin baltimore boston charlotte chicago columbus dallas dallas-north denver
          detroit houston indianapolis jacksonville kansas-city las-vegas los-angeles memphis miami
          milwaukee minneapolis nashville new-york oklahoma-city orlando philadelphia phoenix pittsburgh
          portland sacramento saint-louis san-antonio san-diego san-francisco san-jose seattle tampa
          washington-dc
      )
    end

    def deal_params
      {
        :num_available => (11..20).to_a.sample,
        :value         => (8100..10000).to_a.sample,
        :price         => (6100..8000).to_a.sample
      }
    end

    standard_regions.each do |region|
      Region.create(
        :slug => region,
        :name => region.titleize
      )
    end

    10.times do
      standard_regions.sample(5).each do |region|
        Deal.create(
          deal_params.update(:region_id => Region.where(:slug => region).first.id)
        )
      end
    end
