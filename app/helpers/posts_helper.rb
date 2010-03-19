# Helper methods defined here can be accessed in any controller or view in the application

SampleBlog.helpers do
  # feed_tag(:rss, :title => "RSS", :href => url(...))
  # feed_tag(:atom, :title => "ATOM", :href => url(...))
  def feed_tag(mime, options={})
    full_mime = (mime == :atom) ? 'application/atom+xml' : 'application/rss+xml'
    content_tag(:link, options.reverse_merge(:rel => 'alternate', :type => full_mime))
  end
end