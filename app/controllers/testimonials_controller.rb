class TestimonialsController < ApplicationController
  before_action :set_testimonial, only: [:edit, :update, :show]
  before_action :set_user

  def new
    @testimonial = Testimonial.new
  end

  def create
    @user = User.find(params[:user_id])
    @testimonial = @user.testimonials.new(testimonial_params)
    @testimonial.user = current_user

    if @testimonial.save
      flash[:notice] = "You've added a new testimonial!"
      redirect_to root_path
    else
      flash[:error] = "You forgot either the client name, or what they said!"
      render :new
    end
  end

  def edit

  end

  def update
    if @testimonial.update
      flash[:notice] = "You've updated this testimonial!"
      redirect_to root_path
    else
      flash[:error] = "You have not updated this testimonial!"
      render_template :edit
    end
  end

  def show

  end

  private

  def testimonial_params
    params.require(:testimonial).permit(:client, :body)
  end

  def set_testimonial
    @testimonial = Testimonial.find(params[:id])
  end
end