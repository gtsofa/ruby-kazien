module Api
    module V1
        class MyArticlesController < ApplicationController
            def index
                my_articles = MyArticle.order('created_at DESC')
                render json: {status: 'SUCCESS', message: 'Loaded articles', data:my_articles}, status: :ok
            end
        end
    end
    
end