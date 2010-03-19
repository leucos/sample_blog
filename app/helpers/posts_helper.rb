# Helper methods defined here can be accessed in any controller or view in the application

SampleBlog.helpers do
  # auto_discovery_link_tag(:rss, :title => "RSS", :href => url(...))
  # auto_discovery_link_tag(:atom, :title => "ATOM", :href => url(...))
  def auto_discovery_link_tag(mime, options={})
    full_mime = (mime == :atom) ? 'application/atom+xml' : 'application/rss+xml'
    content_tag(:link, options.reverse_merge(:rel => 'alternate', :type => full_mime))
  end
end