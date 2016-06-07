ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)

require 'rails/commands/server'
       module Rails
             class Server
                         alias :default_options_alias :default_options
                  
               def default_options
               default_options_alias.merge!(:Host => '0.0.0.0',:Port => 80)
                       end   
             end
       end
