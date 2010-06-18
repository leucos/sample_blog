class SampleBlog < Padrino::Application
  register Padrino::Helpers
  register Padrino::Mailer
  register SassInitializer

  ##
  # Application-specific configuration options
  #
  # set :raise_errors, true     # Show exceptions (default for development)
  # set :public, "foo/bar"      # Location for static assets (default root/public)
  # set :sessions, false        # Enabled by default
  # set :reload, false          # Reload application files (default in development)
  # set :default_builder, "foo" # Set a custom form builder (default 'StandardFormBuilder')
  # set :locale_path, "bar"     # Set path for I18n translations (default your_app/locales)
  # disable :flash              # Disables rack-flash (enabled by default)
  # enable  :authentication     # Enable padrino-admin authentication (disabled by default)
  # layout  :my_layout          # Layout can be in views/layouts/foo.ext or views/foo.ext (default :application)
  #

  get "/" do
    "Hello World!"
  end

  get :about, :map => '/about_us' do
    render :haml, "%p This is a sample blog created to demonstrate the power of Padrino!"
  end

end
