#require 'factory_girl'
#require 'faker'
#
#FactoryGirl.define do
#  factory :region do
#    name { Faker::Lorem.sentence }
#    slug { (("a".."z").to_a.join("") * 100).split("").sample(75).join("") }
#  end
#end