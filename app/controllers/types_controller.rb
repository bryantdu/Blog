
class TypesController < ApplicationController
	def index
		@types = Type.all
	end

	def new
		@type = Type.new
	end

	def create
		@type = Type.new(params[:type])

		respond_to do |format|
     		if @type.save
       		format.html {redirect_to types_path, :notice => 'Type successfully saved' }
        	format.json {render :json => @type, :status => :created, :location => @type }
       		else
        	format.html {render :action => "new"}
        	format.json {render :json => @type.errors, :status => :unprocessable_entity}
       		end
    	end
	end
end
