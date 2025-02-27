require_relative 'spec_helper'

describe Assignment do

    context "when given a user" do

      let(:user) { User.new :name => "Ivon" }
      
      before :each do
        subject.user = user
      end

      context "when attempting to save the Assignment" do

        #
        # RSpec allows you to set expectations for calls that should not
        # raise Exceptions.
        #
        # @see https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers/raise-error-matcher
        #
        it "should not raise an error" do

          expect { subject.save! }.to_not raise_exception
          
        end

      end
      
    end

    context "when not given a User" do

      subject = User.create
      
      #
      # Rails Model Objects automatically gain methods that provide a lot of functionality.
      # A model can be checked to see if it is valid? or invalid?
      #
      # @see http://guides.rubyonrails.org/active_record_validations_callbacks.html#valid-and-invali
      #
      it "should not be a valid" do
       
        subject.should_not be_valid
        
      end

      context "when attempting to save the Assignment" do
        
        #
        # RSpec allows you to set expectations for calls that should raise
        # Exceptions.
        #
        # @see https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers/raise-error-matcher
        #
        it "should raise an error" do

          expect { subject.save! }.to raise_exception
        
        end

      end
      
    end
    
end
