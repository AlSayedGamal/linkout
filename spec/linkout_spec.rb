require 'spec_helper'

describe Linkout do
	profile = Linkout::Profile.new "https://www.linkedin.com/in/alsayedgamal"
  it 'has a version number' do
    expect(Linkout::VERSION).not_to be nil
  end

  it 'should accept profile url' do
  	expect(profile.url).to eq "https://www.linkedin.com/in/alsayedgamal" 
  end
  it 'should have a name' do
  	expect(profile.name).to eq "Al Sayed Gamal"  
  end
  it 'should have basic info' do
  	expect(profile.basic_info[:current_title]).to eq "Senior Software Engineer at MENA Commerce"
  	expect(profile.basic_info[:current_location]).to eq "Egypt"
  	expect(profile.basic_info[:current_industry]).to eq "Information Technology and Services"
  end

end
