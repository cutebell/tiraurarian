class Admin::TweetsController < AdministrationController
  before_action :set_tweet, only: [:show, :edit, :update, :destroy]

  # GET /tweets
  # GET /tweets.json
  def index
    @tweets = Tweet.all.order(id: :desc)
  end

  # GET /tweets/1
  # GET /tweets/1.json
  def show
  end

  # GET /tweets/new
  def new
    @tweet = Tweet.new
  end

  # GET /tweets/1/edit
  def edit
  end

  # POST /tweets
  # POST /tweets.json
  def create
    @tweet = Tweet.new(tweet_params)

    respond_to do |format|
      if @tweet.save
        format.html { redirect_to [:admin, @tweet], notice: 'Tweet was successfully created.' }
        format.json { render :show, status: :created, location: [:admin, @tweet] }
      else
        format.html { render :new }
        format.json { render json: @tweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tweets/1
  # PATCH/PUT /tweets/1.json
  def update
    respond_to do |format|
      if @tweet.update(tweet_params)
        format.html { redirect_to [:admin, @tweet], notice: 'Tweet was successfully updated.' }
        format.json { render :show, status: :ok, location: [:admin, @tweet] }
      else
        format.html { render :edit }
        format.json { render json: @tweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tweets/1
  # DELETE /tweets/1.json
  def destroy
    @tweet.destroy
    respond_to do |format|
      format.html { redirect_to admin_tweets_url, notice: 'Tweet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tweet
      @tweet = Tweet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tweet_params
      params.require(:tweet).permit(:id, :user_id, :parent_id, :content, :create_datetime)
    end
end