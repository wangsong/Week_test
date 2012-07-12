require 'spec_helper'

describe StudentsController do
render_views
  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end
describe "user name and email vaildate" do
		before(:each) do
			@attr = {
				:name => "wangsong",
				:email => "wangsong@example.com",
				:number=>12345678,
        :sex=>"man"
				}
		end
    #name
     it "should require a name" do
			no_name_user = Student.new(@attr.merge(:name => ""))
			no_name_user.should_not be_valid
		end
			it "should valid name" do
				Student.new(@attr.merge(:name=>"xuya")).
				should_not be_valid
			end
			it "should require a valid name" do
				Student.new(@attr.merge(:name => "%$^adfadf")).
				should_not be_valid
			end
			it "should reject long name" do
				long = "a" * 21
				Student.new(@attr.merge(:name => long)).should_not be_valid
			end
      #email
      it "should accept valid email addresses" do
          addresses = %w[344621612@qq.com THE_USERfoo.bar.org first.last@foo.jp]
          addresses.each do |address|
          valid_email_user = Student.new(@attr.merge(:email => address))
          valid_email_user.should be_valid
        end
      end
      #number
      it "should  valid number" do
				Student.new(@attr.merge(:number => 12312421)).should_not be_valid
			end
    end
end
