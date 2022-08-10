class ArticlesController < ApplicationController


def index
    @articles = Article.all
end

def show
    @article = Article.find(params[:id])
    @comment = Comment.new
    @comment.article_id = @article.id
end

def create
    @article = Article.new(art_params)
    @article.save
    redirect_to @article
end 

def new
    @article = Article.new

end

def edit

    @article = Article.find(params[:id])

end

def update
    @article = Article.find(params[:id])
    @article.update(art_params)
    redirect_to @article

end

def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_url
    
end

def art_params
params.require(:article).permit(:title, :body)
end



end