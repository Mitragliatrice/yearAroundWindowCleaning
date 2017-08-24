class QuotesController < ApplicationController
before_action :set_quote, only: [:edit, :show, :update, :destroy]
              :authenticate_user!
              access all: [:new, :create],  site_admin: :all

  def index
    @quotes = Quote.order('created_at DESC').page(params[:page]).per(5)
    @fixed_pos = "fixed-pos"
  end

  def show
  end

  def destroy
    @quotes.destroy

        respond_to do |format|
      format.html { redirect_to quotes_path, notice: 'Record was removed.' }
    end
  end

  def create
    @quotes = Quote.new(quote_params)

        respond_to do |format|
      if @quotes.save
            SmsTool.send_sms(name: @quotes.name, phone: @quotes.phone, email: @quotes.email, city: @quotes.city, comments:@quotes.body)
        format.html { redirect_to root_path, alert: 'Quote was successfully submitted.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
         respond_to do |format|
      if @quotes.update(quote_params)
        format.html { redirect_to quotes_url, notice: 'Quote was successfully posted.' }
      else
        format.html { render :new }
      end
    end
  end

  def new
    @quotes = Quote.new
  end

  def edit
  end


  private



  def quote_params
    params.require(:quote).permit(:name,
                                  :city,
                                  :phone,
                                  :email,
                                  :body,
                                )
  end


end
