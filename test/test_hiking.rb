require 'rubygems'
require 'mosquito'
require File.dirname(__FILE__) + "/../public/hiking"

class TestHiking < Camping::WebTest
  test_xml = '<test><item number="1">First Item</item></test>'

  test "should get index" do
      get
      assert_response :success
      assert_match_body %r{&lt;test&gt;\r\n&lt;item number=\"1\"&gt;First Item&lt;/item&gt;\r\n&lt;/test&gt;}
  end
  
  test "should parse xml" do
    post '/',
      :xml => test_xml,
      :xpath => "/test/item/@number",
      :body => "Body"
    
    assert_response :success
    
    assert_match_body %r{<textarea name=\"results\" cols=\"30\" rows=\"19\" id=\"results\">1</textarea>}
  end
end