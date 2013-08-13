class CpusController < ApplicationController

def index
   @cpus = Cpu.all
end

def show
    @cpu = Cpu.find(params[:id])
end

def new
  @cpu = Cpu.new
end
def create
   @cpu = Cpu.new(params[:cpu])
   if @cpu.save

     format.html { redirect_to @cpu, notice: 'Cpu was successfully created.' }
     format.json { render action: 'show', status: :created, location: @cpu }
   else
        format.html { render action: 'new' }
        format.json { render json: @cpu.errors, status: :unprocessable_entity }
   end
end

def edit
  @cpu = Cpu.find(params[:id])
end
  
def update
  @cpu = Cpu.find(params[:id])
  if @cpu.update_attributes(params[:cpu])
     flash[:notice] = 'Cpu was successfully updated.'
     redirect_to :action => 'show', :id => @cpu
  else
     render :action => 'edit'
  end
end

def delete
  @client.destroy
  respond_to do |format|
      format.html { redirect_to clients_url }
      format.json { head :no_content }
  end
end
end
