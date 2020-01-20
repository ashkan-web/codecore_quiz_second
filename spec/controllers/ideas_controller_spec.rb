require 'rails_helper'

RSpec.describe IdeasController, type: :controller do

    describe '#new' do

    it 'should render the new template' do 
        get(:new)

        expect(response).to(render_template(:new))
    end
    it 'should set an instance variable with a new idea' do 

        get(:new)

        expect(assigns(:idea)).to(be_a_new(Idea))

          end
     end

   end

#    describe '#create' do
        
  
  
#        it 'sets a flash danger message' do 
#            valid_request
#            expect(flash[:danger]).to be
#        end
      
#            it 'should create a new idea in the db' do
#                count_before = Idea.count
#                valid_request
#                count_after = Idea.count 
#                expect(count_after).to eq(count_before + 1)
#            end
#            it 'should redirect to the show page of that post' do
#                valid_request
#                job_post = Idea.last
#                expect(response).to(redirect_to(idea_path(idea)))
#            end
           
#        end


