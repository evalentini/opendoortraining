# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#---BANKING SAMPLE CLASSES----------

Course.create(name: 'How to Be A Banker', career: 'Banking')
Course.create(name: 'Financial Modeling 101', career: 'Banking')
Course.create(name: 'LBO Modeling-Deal Detail', career: 'Banking')

#---CONSULTING SAMPLE CLASSES----------

Course.create(name: 'What is a Consultant', career: 'Consulting')
Course.create(name: 'Intro to the Case Method', career: 'Consulting')
Course.create(name: 'Beating the Case Interview', career: 'Consulting')

#---ENTREPRENEURSHIP SAMPLE CLASSES----------

Course.create(name: 'Test the Idea', career: 'Entreprenuership')
Course.create(name: 'Fundraising Step by Step', career: 'Entreprenuership')
