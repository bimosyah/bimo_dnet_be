class PengajuansController < ApplicationController
    def index
        @data = Pengajuan.all 
        render json: @data
    end

    def show
        @data = Pengajuan.find(params[:id])
        render json: @data
    end  

    def create
        @data = Pengajuan.create(
            nama_pegawai: params[:nama_pegawai],
            nama_pengajuan: params[:nama_pengajuan],
            status_pengajuan: 0
        )
        render json: @data
    end 

    def update
        @data = Pengajuan.find(params[:id])
        @data.update(
            nama_pegawai: params[:nama_pegawai],
            nama_pengajuan: params[:nama_pengajuan],
            status_pengajuan: params[:status_pengajuan]
        )
        render json: @data
    end 

    def destroy
        @data_all = Pengajuan.all 
        @data = Pengajuan.find(params[:id])
        @data.destroy
        render json: @data_all
    end 

    def approve_pengajuan
        @data = Pengajuan.find(params[:id])
        @data.update(
            status_pengajuan: 1
        )
        render json: @data
    end 
end
