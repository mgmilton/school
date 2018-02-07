class AddressesController < ApplicationController

  def index
    @student = Student.find(params[:student_id])
  end

  def show
    @address = Address.find(params[:id])
  end

  def new
    @student = Student.find(params[:student_id])
    @address = Address.new
  end

  def create
    @student = Student.find(params[:student_id])
    @address = @student.addresses.new(address_params)
    if @address.save
      flash[:success] = "#{@address.name} was created!"
      redirect_to student_addresses_path(@student)
    else
      render :new
    end
  end


  private

  def address_params
    params.require(:address).permit(:description, :street, :city, :state, :zipcode)
  end


end
