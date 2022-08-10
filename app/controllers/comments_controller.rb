class CommentsController < ApplicationController
    def create
        @article = Article.find(params[:article_id])
        @comment = @article.comments.new(comment_params)
        @comment.article_id = params[:article_id]
        puts @comment.save
        respond_to do |format|
            format.turbo_stream
            format.html{redirect_to article_path(@article)}
            format.js
          end
      
       
      end
      
      
      def comment_params
        params.require(:comment).permit(:body)
      end
end
