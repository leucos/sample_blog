SampleBlog.controllers :posts do
  get :index, :respond_to => [:html, :rss] do
    @posts = Post.all(:order => 'created_at desc')
    case content_type
      when :rss
        render "posts/index", :layout => false, :engine => 'builder'
      else
        render 'posts/index' 
    end
  end
  
  
  get :show, :with => :id do
    @post = Post.find_by_id(params[:id])
    render 'posts/show'
  end
end