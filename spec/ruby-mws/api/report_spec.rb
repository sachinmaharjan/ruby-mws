require 'spec_helper'

describe MWS::API::Report do

  before :all do
    EphemeralResponse.activate
    @mws = MWS.new(auth_params)
    @timestamp = "2012-04-25T21:42:55-04:00"
  end

  context "requests" do
    describe "get_report" do
      # TODO: Mock Response?
    end

    describe "request_report" do
      it "should request a report" do
        response = @mws.reports.request_report report_type: '_GET_FLAT_FILE_OPEN_LISTINGS_DATA_'
        response.should have_key(:request_report_info)
      end
    end

    describe "get_report_request_list" do
      it "should get a list of report requests" do
        response = @mws.reports.get_report_request_list
        response.request_report_info.should be_an_instance_of Array
      end

    end
  end

end