set :application, "gina"
set :repository,  "git@github.com:matthisamoto/gina.git"
set :default_environment, { 
  'PATH' => "/home/matt/.rvm/rubies/ruby-1.9.2-p180/bin:/home/matt/.rvm/gems/ruby-1.9.2-p180/bin:/home/matt/.rvm/bin:$PATH",
  'RUBY_VERSION' => 'ruby-1.9.2-p180',
  'GEM_HOME' => '/home/matt/.rvm/gems/ruby-1.9.2-p180/',
  'GEM_PATH' => '/home/matt/.rvm/gems/ruby-1.9.2-p180/',
  'BUNDLE_PATH' => '/home/matt/.rvm/gems/ruby-1.9.2-p180/'
}

set :scm, :git
set :branch, 'master'
set :user, 'matt'

set :use_sudo, false
set :deploy_to, "/home/matt/sites/gina"
set :deploy_via, :copy
set :copy_remote_dir, "/home/matt/sites/gina/tmp"
set :copy_exclude, [".git"]

role :web, 'the-gina-kilpatrick-entourage.com'                          # Your HTTP server, Apache/etc
role :app, 'the-gina-kilpatrick-entourage.com'                          # This may be the same as your `Web` server
role :db,  'the-gina-kilpatrick-entourage.com', :primary => true        # This is where Rails migrations will run