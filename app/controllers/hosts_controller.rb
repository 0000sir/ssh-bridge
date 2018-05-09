class HostsController < ApplicationController
  def index
    @hosts = Host.all
    render json: @hosts, status: :ok
  end

  def create
    @host = Host.find_or_create_by sn: params[:sn]
    @host.update_attributes model: params[:model], detail: params[:detail]
    render json: @host, status: :ok
  end
end
