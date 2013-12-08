class ArticlesController < ApplicationController
   def index  
   @articles = Article.all
    
     respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @articles }
    end
  end
  
   # GET /articles/1
  # GET /articles/1.json
  def show
    @article = Article.find(params[:id])
    
        respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @articles }
    end
  end
 

  def new
    @history_resource = HistoryResource.find(params[:history_resource_id])
    @article = Article.new
  end
  
    def create
    @history_resource = HistoryResource.find(params[:history_resource_id])
    @article = @history_resource.articles.build(params[:article])
    

    respond_to do |format|
      if @article.save
        format.html { redirect_to(@history_resource, :notice => 'Article was successfully created.') }
        format.json { render json: @history_resource, status: :created, location: @history_resource }
      else
         format.html { redirect_to(@history_resource, :notice => 
        'Article could not be saved. Please fill in all fields')}
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @article = Article.find(params[:id])
    @history_resource = @article.history_resource


  respond_to do |format|
   if @article.update_attributes(params[:article])
       format.html { redirect_to(@history_resource, :notice => 'Article was successfully updated.') }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end



  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    respond_to do |format|
      format.html { redirect_to articles_url }
      format.json { head :no_content }
    end
  end
    

  
  def edit
    @article = Article.find(params[:id])

    
  end
end
