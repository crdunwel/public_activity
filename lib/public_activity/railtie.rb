require 'rails'
require 'public_activity'
require 'public_activity/models/activity'

puts 'test'

module PublicActivity
  class Railtie < Rails::Engine

    initializer 'public_activity.activity' do |app|
      ActiveRecord::Base.send :include, PublicActivity::Activity
    end

  end
end
