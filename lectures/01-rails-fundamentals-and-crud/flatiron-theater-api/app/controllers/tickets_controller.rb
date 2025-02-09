class TicketsController < ApplicationController
    
    # "/tickets"
    def index
        # BREAKOUT ACTIVITY 1: Adding ActiveRecord Queries
        # Pull all Tickets and render in JSON format
        render json: Ticket.all
    end 

    # '/tickets/1'
    def show
        # BREAKOUT ACTIVITY 1: Adding ActiveRecord Queries
        # Find Ticket by "id" params and render in JSON format along with associated Production

        # NOTE => Use "byebug" to test your code in Terminal
        # byebug
        ticket = Ticket.find(params[:id])
        render json: ticket, include: [:production, :user]
    end 
end