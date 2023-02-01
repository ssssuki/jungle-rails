
require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
   
      it 'is valid with valid attributes' do
        
        params = {
        first_name:'suki',
        last_name:'xxx',
        email: 'dev@dev',
        password:'666',
        password_confirmation:'666'
        }
        expect(User.new(params)).to be_valid

      end
      it 'should not be valid if password is less than 3 characters' do
        params = {
        first_name:'suki',
        last_name:'xxx',
        email: 'dev@dev',
        password:'66',
        password_confirmation:'66'
        }
        expect(User.new(params)).to_not be_valid
      end
      it 'should not be valid if password and pass confirmation do not match' do
        params = {
        first_name:'suki',
        last_name:'xxx',
        email: 'dev@dev',
        password:'666',
        password_confirmation:'66666'
        }
        expect(User.new(params)).to_not be_valid
      end
  
      describe '.authenticate_with_credentials' do
        # examples for this class method here
        it "checks the login and returns the authenticated user" do
          user = User.create(first_name: "suki", :last_name => "xxx", :email => "xxx@xxx", :password => "Abcdef", :password_confirmation => "Abcdef")
          authenticated_user = User.authenticate_with_credentials("xxx@xxx", "Abcdef")
          expect(authenticated_user).to eq(user)
        end
        it "checks the login and returns nill if the login does not validate" do
          user = User.create(first_name: "suki", :last_name => "xxx", :email => "xxx@xxx", :password => "Abcdef", :password_confirmation => "Abcdef")
          authenticated_user = User.authenticate_with_credentials("xx@xxx", "Abcdef")
          expect(authenticated_user).to eq(nil)
        end
        it "checks the login and returns authenticated user regardless of trailing spaces or capitaliztion" do
          user = User.create(first_name: "suki", :last_name => "xxx", :email => "xxx@xxx", :password => "Abcdef", :password_confirmation => "Abcdef")
          authenticated_user = User.authenticate_with_credentials("XxX@XxX ", "Abcdef")
          expect(authenticated_user).to eq(user)
        end
      end
    end
end