require 'rails_helper'

describe FetchData, type: :service do
  context '.initialize -' do
    it "connects to the api server"
  end

  context '.update_cache -' do
    before(:each) do
      @fd = FetchData.new
      @fd.update_cache
    end

    it "creates all qualification records" do
      expect(Qualification.count).to eql(@fd.qualifications.count)
    end
    it "creates all subject records" do
      expect(Subject.count).to eql(@fd.subjects.uniq{|s|s['id']}.count)
    end
    it "qualification record has relation to correct subjects" do
      qualification = @fd.qualifications.select{|q|q['subjects'].count > 0}.first

      expect(Qualification.find_by_uuid(qualification['id']).subjects.count).to eql(qualification['subjects'].count)
    end
  end
end
