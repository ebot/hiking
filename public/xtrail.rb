# TODO Add bang, authoer and description
# Pastie at http://pastie.org/private/6snpjuev5ftdf3yjwaabjq
require 'camping'
require "rexml/document"

include REXML

Camping.goes :Xtrail

  module Xtrail::Controllers
    class Index < R '/'
      def get
        @xml = input.xml
        @xpath = input.xpath
        
        unless @xml == nil 
          doc = Document.new input.xml
          @results = XPath.match doc, input.xpath
        else
          @xml = "<test>\r\n<item number=\"1\">First Item</item>\r\n</test>"
        end
        
        render :index
      end
      
      def post
        get
      end
    end
    
    class Style < R '/style.css'
      def get
        @headers["Content-Type"] = "text/css; charset=utf-8"
        @body = %{
          body {
            background-color: black;
            color: white;
            font-family: Courier New;
            font-size: small;
          }
          h1 {
            color: green;
            font-size: 175%;
            margin: 0; padding: 10px;
            border-bottom: solid 1px white;
          }
          div.content {
            padding: 10px 0px 0px 10px;
          }
          h2 {
            color: green;
            font-size: 150%;
            border-bottom: solid 1px white;
            width: 250px;
          }
          strong {
            color: yellow;
            font-size: 115%
          }
          input, textarea, button {
            border: solid 1px white;
            background-color: #4B4B4B;
            color: white;
          }
          button {cursor: pointer;}
          a {
            color:white;
            text-decoration:underline;
          }
          a:link {
            color:white;
            text-decoration:underline;
          }
          a:visited {
            color:white;
            text-decoration:underline;
          }
          a:active {
            color:white;
            text-decoration:none;
          }
          a:hover {
            color:yellow;
            text-decoration: underline;
          }
          div.footer {
            padding: 5px 0px 5px 10px;
            margin-top: 5px;
            border-top: solid 1px gray;
            text-align: center;
            font-style: italic;
            font-size: 90%;
            color: lightgray;
            clear: both;
          }
          div.results {
            float: right;
            margin-top: -20px;
            margin-right: 20px;
            display: inline;
          }
          * html div.results {
            margin-top: -3px;
          }
          div.query_form {
            float: left;
            width: 800px;
          }
        }
      end
    end
  end

  module Xtrail::Views
    def layout
      html do
        head do
          title 'Xtrail - An XPATH Interpreter'
          link :rel => 'stylesheet', :type => 'text/css',
            :href => '/style.css', :media => 'screen'
        end
        body do
          h1.header 'Xtrail - An XPATH Interpreter'
          div.content do
            self << yield
          end
          div.footer do
            p do
              span 'Created by '
              a(:href => 'http://edbotz.us') {'Ed Botzum'}
              span ' with '
              a(:href => 'http://camping.rubyforge.org/') {'Camping'}
              span ' on JUN 03 2008.'
            end
          end
        end
      end
    end
    
    def index
      div.query_form do
        form :action => '/', :method => 'post', :name => 'query' do
          fieldset do
            p do
              strong 'XPATH Statement:  '
              br 
                input :type => 'text', :name => 'xpath', :id => 'xpath', 
                  :size => '108', :value => @xpath
                span '  '
                button(:type => 'submit') {'Query'}
            end
              
            p do
              strong 'XML:  '
              br 
              textarea @xml, :name => 'xml', :id => 'xml', :rows => '15', 
                :cols => '90'
            end
          end
        end
      end
      
      div.results do
        h2 'Results:  '
        textarea @results, :name => 'results', :id => 'results', 
          :rows => '19', :cols => '30'
      end
      
      script <<-END, :language => "JavaScript1.2"
        document.getElementById('xpath').focus();
      END
    end
  end