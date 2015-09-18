require 'rails_helper'

RSpec.describe Answer do
  let(:answer) { Answer.create!(body: "New Answer body") }
    describe "attributes" do
    it "should respond to body" do      
      expect(answer).to respond_to(:body) 
    end
    it "should respond to question" do
      expect(answer).to respond_to(:question)
    end
  end
end

