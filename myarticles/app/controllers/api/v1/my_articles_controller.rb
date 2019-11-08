module Api
    module V1
        class MyArticlesController < ApplicationController
            def index
                my_articles = MyArticle.order('created_at DESC')
                render json: {status: 'SUCCESS', message: 'Loaded articles', data:my_articles}, status: :ok
            end

            def show
                my_article = MyArticle.find(params[:id])
                render json: {status: 'SUCCESS', message: 'Loaded article', data:my_article}, status: :ok
            end

            def create
                my_article = MyArticle.new(my_article_params)

                if my_article.save
                    render json: {status: 'SUCCESS', message: 'Created article', data:my_article}, status: :ok
                else
                    render json: {status: 'ERROR', message: 'Article not saved', data:my_article.errors}, status: :unprocessable_entity
                end
            end

            def destroy
                my_article = MyArticle.find(params[:id])
                
                my_article.destroy
                render json: {status: 'SUCCESS', message: 'Article deleted', data:my_article}, status: :ok
                    
            end

            def update
                my_article = MyArticle.find(params[:id])
                if my_article.update_attributes(my_article_params)
                    render json: {status: 'SUCCESS', message: 'Updated article', data:my_article}, status: :ok
                else
                    render json: {status: 'ERROR', message: 'Article not updated', data:my_article.errors}, status: :unprocessable_entity
                end

            end


            private

            def my_article_params
                params.permit(:title, :body)
            end
        end
    end
    
end