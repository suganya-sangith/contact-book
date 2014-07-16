
class ContactsController < ApplicationController
    def new
    	@contact = Contact.new
	end
	def create
		@contact = Contact.new(contact_params)
		name=params[:contact][:photo].original_filename
		 respond_to do |format|
    if @contact.save
      ContactMailer.email_send(@contact).deliver
      @contact.update(:photo => name )
      format.html { redirect_to(@contact, :notice => 'User was successfully created.') }
      format.xml  { render :xml => @contact, :status => :created, :location => @contact }
    else
      format.html { render :action => "new" }
      format.xml  { render :xml => @contact.errors, :status => :unprocessable_entity }
    end
  end
		
	end
	def male
		@contacts = Contact.where( gender: "male")
		render 'male'
	end
	def female
		@contacts = Contact.where( gender: "female")
		render 'female'
	end
	def show
		@contact = Contact.find(params[:id])
	end
	def index
		@contacts = Contact.all
	end
	def edit
		@contact = Contact.find(params[:id])
	end
	def destroy
		@contact = Contact.find(params[:id])
		@contact.destroy
		redirect_to contacts_path
	end
	def update
		@contact = Contact.find(param[:id])
		name=params[:contact][:photo].original_filename
		@contact.update(:photo => name)
		if @contact.update(contact_params)
			flash.now[:success] = "successfully updated"
			redirect_to @contact
		else
			render 'edit'
		end
	end
	def func
		if params[:contact] && params[:contact][:photo]
			name=params[:contact][:photo].original_filename
			directory= "public/data"
			return path = File.join(directory,name) 
		else
			return nil
		end
	end
    def contact_params
		File.open(func,"wb") { |f| f.write(params[:contact][:photo].read) }
		params.require(:contact).permit(:firstname, :lastname, :gender, :email, :mobile_number, :address)
	end
	def auto_search
		@contacts = Contact.where("firstname like ?", "#{params[:firstname]}%")
		render json: @contacts.as_json
	end

end
