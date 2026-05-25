class TicketsController < ApplicationController
  before_action :set_ticket, only: %i[ show edit update destroy ]

  def index
    @status = params[:status]
    @tickets = Ticket.recent
    @tickets = @tickets.by_status(@status) if @status.present?
  end

  def show
  end

  def new
    @ticket = Ticket.new(priority: "normal", status: "open")
  end

  def edit
  end

  def create
    @ticket = Ticket.new(ticket_params)

    if @ticket.save
      redirect_to @ticket, notice: "Ticket created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @ticket.update(ticket_params)
      redirect_to @ticket, notice: "Ticket updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @ticket.destroy
    redirect_to tickets_url, notice: "Ticket deleted."
  end

  private

  def set_ticket
    @ticket = Ticket.find(params[:id])
  end

  def ticket_params
    params.require(:ticket).permit(:title, :customer_email, :priority, :status, :description)
  end
end
