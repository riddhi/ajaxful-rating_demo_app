class CarsController < ApplicationController
  before_filter :login_required, :only => :rate
  before_filter :find_car, :only => [:rate, :show, :edit, :update, :destroy]
  
  def rate
    @car.rate(params[:stars], current_user, params[:dimension])
    id = "ajaxful-rating-#{!params[:dimension].blank? ? "#{params[:dimension]}-" : ''}car-#{@car.id}"
    render :update do |page|
      page.replace_html id, ratings_for(@car, :wrap => false, :dimension => params[:dimension], :small_stars => params[:small_stars])
      page.visual_effect :highlight, id
    end
  end
  
  def index
    @cars = Car.all
  end
  
  def show
  end
  
  def new
    @car = Car.new
  end
  
  def create
    @car = Car.new(params[:car])
    if @car.save
      flash[:notice] = "Successfully created."
      redirect_to @car
    else
      render 'new'
    end
  end
  
  def edit
  end
  
  def update
    if @car.update_attributes(params[:car])
      flash[:notice] = "Successfully updated."
      redirect_to @car
    else
      render 'edit'
    end
  end
  
  def destroy
    @car.destroy
    redirect_to cars_path
  end
  
  private
  
  def find_car
    @car = Car.find(params[:id])
  end
end
