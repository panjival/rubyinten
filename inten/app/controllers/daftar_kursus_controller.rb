class DaftarKursusController < ApplicationController
  def index
    @daftar_kursus = DaftarKursu.all
  end

  def show
    @daftar_kursu = DaftarKursu.find(params[:id])
  end

  def edit
    @daftar_kursu = DaftarKursu.find(params[:id])
  end

  def update
    @daftar_kursu = DaftarKursu.find(params[:id])
    @daftar_kursu.update(daftar_params)

    redirect_to daftar_kursu_path
  end

  def new
    @daftar_kursu = DaftarKursu.new
  end

  def create
  @daftar_kursu = DaftarKursu.create(daftar_params)

  redirect_to @daftar_kursu
  end

  def destroy
  @daftar_kursu = DaftarKursu.find(params[:id])
  @daftar_kursu.destroy

  redirect_to daftar_kursus_path
  end

  private
  def daftar_params
    params.require(:daftar_kursu).permit(:id_murid, :id_jenis_kursus, :id_instruktur)
  end
end
