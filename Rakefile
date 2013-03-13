#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.
require "bundler/gem_tasks"
require File.expand_path(File.dirname(__FILE__))+'/tasks/spec'
require File.expand_path(File.dirname(__FILE__))+'/tasks/ci'


require File.expand_path('../config/application', __FILE__)

OffersServices::Application.load_tasks
