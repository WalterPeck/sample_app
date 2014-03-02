require 'spec_helper'

describe "StaticPages" do
  
  let(:base_title) {"Ruby on Rails Tutorial Sample App"}
 
  subject { page }			
  
  describe "Home Page" do
    before { visit root_path }	
   								#THIS BELOW TELLS THE TEST WHAT TO SAY IF IT FAILS I BELEIVE
    it { should have_content('Risk Management') }  			#WHAT TO DO. LIKE GO TO THE PAGE AND FIND
  	it { should have_title(full_title('')) }				#THE CONTENT 'SAMPLE APP'
    it { should_not have_title('| Home') }
   
  end
  
  describe "Help Page" do
  	before { visit help_path } 
   			
   	it { should have_content('Help') }
    it { should have_title(full_title('Help')) }
 
 end
 
 describe "About Page" do
  		before { visit about_path }
  		it { should have_content('About S&J') }
      it { should have_title(full_title('About Us')) }
    
  end
  
  describe "Contact Page" do
  		before { visit contact_path }
      
      it { should have_content('Contact Us') }
      it { should have_title(full_title('Contact Us')) }
  end 
  
end    

