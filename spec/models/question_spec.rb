require 'rails_helper'

RSpec.describe Question do
  let(:question) { Question.create!(title: "New Question Title", body: "New Question body", resolved: true) }
    describe "attributes" do
    # title
    it "should respond to title" do
      expect(question).to respond_to(:title)
    end
    # body  
    it "should respond to body" do  
      expect(question).to respond_to(:body)
    end  
    # resolved
    it "should respond to resloved" do
      expect(question).to respond_to(:resolved)
    end
  end
end
