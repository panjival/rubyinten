class MuridsController < ApplicationController
  def index
    @murids = Murid.all
  end

  def show
    @murid = Murid.find(params[:id])
  end

  def new
    @murid = Murid.new
  end

  def create
    murid = Murid.create(murid_params)
    
      redirect_to muridsindex_path
    end

  def edit
    @murid = Murid.find(params[:id])
  end

  def update
    @murid = Murid.find(params[:id])

    @murid.update(murid_params)

    redirect_to muridsindex_path
  end

  def destroy
    @murid = Murid.find(params[:id])
    @murid.destroy

    redirect_to muridsindex_path
  end

  private
  def murid_params
    params.require(:murid).permit(:nama, :jenis_kelamin, :tmp_lahir, :tgl_lahir, :alamat, :no_tlp)
  end
end
