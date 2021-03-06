class StaticController < ApplicationController
 
   def index
   
   end

  def contact
    @contact = Contact.new
      if request.post?
        @contact.assign_attributes(contact_params)
        if @contact.save
        redirect_to contact_path, notice: "We will be with you never."
      else
        flash[:alert] = "Oops"
        render :contact
      end
    end
  end


  def newssignup
    if request.post?
      UserMailer.newssignup(params).deliver
      AdminMailer.newssignup(params).deliver
      redirect_to root_path
    end
  end


  private

  def contact_params
    params.require(:contact).permit(:name, :email, :question)
  end
end

