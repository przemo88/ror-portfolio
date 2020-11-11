class PagesController < ApplicationController
  before_action :set_page, only: [:show, :edit, :update, :destroy]

  http_basic_authenticate_with name: ENV['LOGIN'], password: ENV['PASSWORD'], except: [:index, :show]

  def index
    @pages = Page.all
    @count = Page.count
  end

  def show
  end

  def new
    @page = Page.new
  end

  def edit
  end

  def create
    @page = Page.new(page_params)

      if @page.save
        redirect_to @page
        flash[:success] = "Dodano nową stronę."
      else
        render 'new'
      end
    end

  def update
      if @page.update(page_params)
        redirect_to @page
        flash[:success] = "Dane zostały zaktualizowane."
      else
        render 'update'
      end
    end


  def destroy
    @page.destroy
      redirect_to pages_url
      flash[:destroy] = "Strona została usunięta."
  end


  private
    def set_page
      @page = Page.find(params[:id])
    end

    def page_params
      params.require(:page).permit(:name, :description, :github, :website, :image)
    end
end
