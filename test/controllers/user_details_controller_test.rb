require 'test_helper'

class UserDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_detail = user_details(:one)
  end

  test "should get index" do
    get user_details_url
    assert_response :success
  end

  test "should get new" do
    get new_user_detail_url
    assert_response :success
  end

  test "should create user_detail" do
    assert_difference('UserDetail.count') do
      post user_details_url, params: { user_detail: { Age: @user_detail.Age, Birthday: @user_detail.Birthday, BrowserUserAgent: @user_detail.BrowserUserAgent, CCExpires: @user_detail.CCExpires, CCNumber: @user_detail.CCNumber, CCType: @user_detail.CCType, CVV2: @user_detail.CVV2, City: @user_detail.City, Color: @user_detail.Color, Company: @user_detail.Company, Country: @user_detail.Country, CountryFull: @user_detail.CountryFull, Domain: @user_detail.Domain, EmailAddress: @user_detail.EmailAddress, GUID: @user_detail.GUID, Gender: @user_detail.Gender, GivenName: @user_detail.GivenName, Latitude: @user_detail.Latitude, Longitude: @user_detail.Longitude, MiddleInitial: @user_detail.MiddleInitial, MoneyGramMTCN: @user_detail.MoneyGramMTCN, MothersMaiden: @user_detail.MothersMaiden, NameSet: @user_detail.NameSet, NationalID: @user_detail.NationalID, Number: @user_detail.Number, Occupation: @user_detail.Occupation, Password: @user_detail.Password, State: @user_detail.State, StateFull: @user_detail.StateFull, StreetAddress: @user_detail.StreetAddress, Surname: @user_detail.Surname, TelephoneCountryCode: @user_detail.TelephoneCountryCode, TelephoneNumber: @user_detail.TelephoneNumber, Title: @user_detail.Title, UPS: @user_detail.UPS, Username: @user_detail.Username, Vehicle: @user_detail.Vehicle, WesternUnionMTCN: @user_detail.WesternUnionMTCN, ZipCode: @user_detail.ZipCode } }
    end

    assert_redirected_to user_detail_url(UserDetail.last)
  end

  test "should show user_detail" do
    get user_detail_url(@user_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_detail_url(@user_detail)
    assert_response :success
  end

  test "should update user_detail" do
    patch user_detail_url(@user_detail), params: { user_detail: { Age: @user_detail.Age, Birthday: @user_detail.Birthday, BrowserUserAgent: @user_detail.BrowserUserAgent, CCExpires: @user_detail.CCExpires, CCNumber: @user_detail.CCNumber, CCType: @user_detail.CCType, CVV2: @user_detail.CVV2, City: @user_detail.City, Color: @user_detail.Color, Company: @user_detail.Company, Country: @user_detail.Country, CountryFull: @user_detail.CountryFull, Domain: @user_detail.Domain, EmailAddress: @user_detail.EmailAddress, GUID: @user_detail.GUID, Gender: @user_detail.Gender, GivenName: @user_detail.GivenName, Latitude: @user_detail.Latitude, Longitude: @user_detail.Longitude, MiddleInitial: @user_detail.MiddleInitial, MoneyGramMTCN: @user_detail.MoneyGramMTCN, MothersMaiden: @user_detail.MothersMaiden, NameSet: @user_detail.NameSet, NationalID: @user_detail.NationalID, Number: @user_detail.Number, Occupation: @user_detail.Occupation, Password: @user_detail.Password, State: @user_detail.State, StateFull: @user_detail.StateFull, StreetAddress: @user_detail.StreetAddress, Surname: @user_detail.Surname, TelephoneCountryCode: @user_detail.TelephoneCountryCode, TelephoneNumber: @user_detail.TelephoneNumber, Title: @user_detail.Title, UPS: @user_detail.UPS, Username: @user_detail.Username, Vehicle: @user_detail.Vehicle, WesternUnionMTCN: @user_detail.WesternUnionMTCN, ZipCode: @user_detail.ZipCode } }
    assert_redirected_to user_detail_url(@user_detail)
  end

  test "should destroy user_detail" do
    assert_difference('UserDetail.count', -1) do
      delete user_detail_url(@user_detail)
    end

    assert_redirected_to user_details_url
  end
end
