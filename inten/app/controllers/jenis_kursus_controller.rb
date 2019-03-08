class JenisKursusController < ApplicationController
  def index
    @jenis_kursus = JenisKursu.all
  end

  def show
    @jenis_kursu = JenisKursu.find(params[:id])
  end

  def new
    @jenis_kursu = JenisKursu.new
  end

  def create
    @jenis_kursu = JenisKursu.create(jenis_params)

    redirect_to @jenis_kursu
  end

  def edit
    @jenis_kursu =JenisKursu.find(params[:id])
  end

  def update
    @jenis_kursu = JenisKursu.find(params[:id])
    @jenis_kursu.update(jenis_params)

    redirect_to jenis_kursu_path
  end

  def destroy
    @jenis_kursu = JenisKursu.find(params[:id])
    @jenis_kursu.destroy
    redirect_to jenis_kursus_path(@jenis_kursu)
  end

  private
  def jenis_params
    params.require(:jenis_kursu).permit(:jenis_kursus,:lama_belajar,:tarif)
  end
end
