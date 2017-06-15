class UsersController < ApplicationController
	skip_before_action :authorize

    def new
    	@user = User.new
    end

    def create
  		@user = User.new(user_params)
  		respond_to do |format|
      		if @user.save!
        		format.html { redirect_to shopper_url, notice: "User #{@user.name} successfully created." }
        		format.json { render :show, status: :created, location: @user }
      		else
        		format.html { render :new }
        		format.json { render json: @user.errors, status: :unprocessable_entity }
      		end
      	end
	end

	  # PATCH/PUT /users/1.json                                                                                                
	  def update    
	  	respond_to do |format|       
	  		if @user.update(user_params)
        		format.html { redirect_to users_url, notice: "User#{@user.name} was successfully updated." }
        		format.json { render :show, status: :ok, location: @user }       
        	else        
        		format.html { render :edit }         
        		format.json { render json: @user.errors, status: :unprocessable_entity }       
        	end    
        end  
    end
  def index    
  	#@users = User.all
    @users = User.order(:name)
  end

	private
	def user_params
  		params.require(:user).permit(:name, :password, :password_confirmation)
	end

end