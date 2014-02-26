require 'spec_helper'

describe "StaticPages" do
  
  let(:base_title) {"Ruby on Rails Tutorial Sample App"}
 
  describe "Home Page" do
   													#THIS BELOW TELLS THE TEST WHAT TO SAY IF IT FAILS I BELEIVE
    it "should have the content. 'Sample App'" do
    	visit '/static_pages/home' #THIS IS PRETTY MUCH PART OF THE FUNCTION TELLING THE TEST
    	expect(page).to have_content('Sample App') #WHAT TO DO. LIKE GO TO THE PAGE AND FIND
    end																					#THE CONTENT 'SAMPLE APP'
    
    it "should have the right title" do 
    	visit '/static_pages/home'
    	expect(page).to have_title("#{base_title}")	
    end 
    
  
  	it "should not have a custom page title" do
  		visit '/static_pages/home'
  		expect(page).not_to have_title('| Home')
    end
  end
  describe "Help Page" do
   
   it "should have the content 'Help'" do
   		visit '/static_pages/help'
   		expect(page).to have_content('Help')
   end   
   
   it "should have the right title" do 
    	visit '/static_pages/help'
    	expect(page).to have_title("#{base_title} | Help")	#same as the other two. dont need to test the whole
   end 																		#title
  end
  
  describe "About Page" do
  
  	it "should have the content 'About us'" do
  		visit '/static_pages/about'
  		expect(page).to have_content('About Us')
  	end
     
    it "should have the right title" do 
    	visit '/static_pages/about'
    	expect(page).to have_title("#{base_title} | About")	
    end
  end
  
  describe "Contact Page" do
    
    it "should have the content 'Contact Us'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact Us')
    end
    
    it "should have the right title" do
    	visit '/static_pages/contact'
      expect(page).to have_title("#{base_title} | Contact Us")
    end 
  end
end    

