class UserDetailsController < ApplicationController
  require 'smarter_csv'
  before_action :set_user_detail, only: [:show, :edit, :update, :destroy]

  # GET /user_details
  # GET /user_details.json
  def import
   pets_by_owner = SmarterCSV.process(params[:file].path)
   pets_by_owner.each do |cus| UserDetail.create(number: cus[:number], gender: cus[:gender], name_set: cus[:nameset], title: cus[:title], given_name: cus[:givenname], middle_initial: cus[:middleinitial], surname: cus[:surname], street_address: cus[:streetaddress], city: cus[:city], state: cus[:state], state_full: cus[:statefull], zip_code: cus[:zipcode], country: cus[:country], country_full: cus[:country_full], email_address: cus[:emailaddress], username: cus[:username], password: cus[:password], browser_user_agent: cus[:browseruseragent], telephone_number: cus[:telephonenumber], telephone_country_code: cus[:telephonecountrycode], mothers_maiden: cus[:mothersmaiden], birthday: cus[:birthday], age: cus[:age], cc_type: cus[:cctype], cc_number: cus[:ccnumber], cvv2: cus[:cvv2], cc_expires: cus[:ccexpires], national_id: cus[:nationalid], ups: cus[:ups], western_union_mtcn: cus[:westernunionmtcn], money_gram_mtcn: cus[:moneygrammtcn], color: cus[:color], occupation: cus[:occupation], company: cus[:company], vehicle: cus[:vehicle], domain: cus[:domain], guid: cus[:guid], latitude: cus[:latitude], longitude: cus[:longitude]) 
    
   end
  redirect_to user_details_path
 end










  def index
    @user_details = UserDetail.all
  end

  # GET /user_details/1
  # GET /user_details/1.json
  def show
  end

  # GET /user_details/new
  def new
    @user_detail = UserDetail.new
  end

  # GET /user_details/1/edit
  def edit
  end

  # POST /user_details
  # POST /user_details.json
  def create
    @user_detail = UserDetail.new(user_detail_params)

    respond_to do |format|
      if @user_detail.save
        format.html { redirect_to @user_detail, notice: 'User detail was successfully created.' }
        format.json { render :show, status: :created, location: @user_detail }
      else
        format.html { render :new }
        format.json { render json: @user_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_details/1
  # PATCH/PUT /user_details/1.json
  def update
    respond_to do |format|
      if @user_detail.update(user_detail_params)
        format.html { redirect_to @user_detail, notice: 'User detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_detail }
      else
        format.html { render :edit }
        format.json { render json: @user_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_details/1
  # DELETE /user_details/1.json
  def destroy
    @user_detail.destroy
    respond_to do |format|
      format.html { redirect_to user_details_url, notice: 'User detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_detail
      @user_detail = UserDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_detail_params
      params.require(:user_detail).permit(:Number, :Gender, :NameSet, :Title, :GivenName, :MiddleInitial, :Surname, :StreetAddress, :City, :State, :StateFull, :ZipCode, :Country, :CountryFull, :EmailAddress, :Username, :Password, :BrowserUserAgent, :TelephoneNumber, :TelephoneCountryCode, :MothersMaiden, :Birthday, :Age, :CCType, :CCNumber, :CVV2, :CCExpires, :NationalID, :UPS, :WesternUnionMTCN, :MoneyGramMTCN, :Color, :Occupation, :Company, :Vehicle, :Domain, :GUID, :Latitude, :Longitude)
    end
end
