class PostCardsController < ApplicationController
  before_action :set_post_card, only: [:show, :edit, :update, :destroy]
  before_action :check_for_lockup, only: [:edit, :new]

  # GET /post_cards
  # GET /post_cards.json
  def index
    @post_cards = PostCard.all.where(published: true).order(sent_at: :desc)
  end

  # GET /post_cards/1
  # GET /post_cards/1.json
  def show
    @post_card = post_card
  end

  # GET /post_cards/new
  def new
    @post_card = PostCard.new
  end

  # GET /post_cards/1/edit
  def edit
  end

  # POST /post_cards
  # POST /post_cards.json
  def create
    @post_card = PostCard.new(post_card_params)

    respond_to do |format|
      if @post_card.save
        format.html { redirect_to @post_card, notice: 'PostCard was successfully created.' }
        format.json { render :show, status: :created, location: @post_card }
      else
        format.html { render :new }
        format.json { render json: @post_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post_cards/1
  # PATCH/PUT /post_cards/1.json
  def update
    respond_to do |format|
      if @post_card.update(post_card_params)
        format.html { redirect_to @post_card, notice: 'PostCard was successfully updated.' }
        format.json { render :show, status: :ok, location: @post_card }
      else
        format.html { render :edit }
        format.json { render json: @post_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post_cards/1
  # DELETE /post_cards/1.json
  def destroy
    @post_card.destroy
    respond_to do |format|
      format.html { redirect_to post_cards_url, notice: 'PostCard was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_card
      @post_card = PostCard.find_by!(slug: params[:slug])
    end

    def post_card
      @post_card ||= PostCard.find_by!(slug: params[:slug])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_card_params
      params.require(:post_card).permit(:title, :keywords, :slug, :description, :image_url, :body, :sent_at, :published)
    end
end
