class HomeController < ApplicationController
    def index
    @article = Article.fi
    end

    def about
    end
end