require 'spec_helper'

describe "StaticPages" do
  
  subject { page }			
  
  shared_examples_for "all static pages" do
  	it { should have_selector('h1', text: heading) }
  	it { should have_title(full_title(page_title)) }
  end
  
  describe "Home Page" do
    before { visit root_path }	
   								#THIS BELOW TELLS THE TEST WHAT TO SAY IF IT FAILS I BELEIVE
    let(:heading) { 'Risk Management' } 			#WHAT TO DO. LIKE GO TO THE PAGE AND FIND
  	let(:page_title) {''}
  	
  	it_should_behave_like "all static pages"				#THE CONTENT 'SAMPLE APP'
    it { should_not have_title('| Home') }
  end
  
  describe "Help Page" do
  	before { visit help_path } 
   			
   	let(:heading)    { 'Help' }
   	let(:page_title) { 'Help' }
   	
  	it_should_behave_like "all static pages"
  end
 
 describe "About Page" do
  	before { visit about_path }
  		
  	let(:heading) 	 { 'About S&J' }
  	let(:page_title) { 'About Us' }
  	
  	it_should_behave_like "all static pages"	
  	
    
  end
  
  describe "Contact Page" do
  		before { visit contact_path }
      
      let(:heading)		 { 'Contact Us' }
      let(:page_title) { 'Contact Us' }
      
     it_should_behave_like "all static pages"
  end 
  
	it "should have the right links on the layout" do
		visit root_path
		click_link "About"
		expect(page).to have_title(full_title('About Us'))
		click_link "Help"   
		expect(page).to have_title(full_title('Help'))
		click_link "Contact"
		expect(page).to have_title(full_title('Contact Us'))
		click_link "Home"
		click_link "Sign up now!"
		expect(page).to have_title(full_title('Sign Up'))
		click_link "S&J Risk Management"
		expect(page).to have_title(full_title(''))
	end

end    

