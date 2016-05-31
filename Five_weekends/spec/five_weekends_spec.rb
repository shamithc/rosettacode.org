require_relative '../five_weekends.rb'

describe FiveWeekends do

  context "No of weekend between two year" do
    it "Should be 6 weekends between 2010 an 2015" do
      f_w = FiveWeekends.new(2010, 2015)
      expect(f_w.month_with_5w.count).to eq 6
    end

    it "Should be 201 weekends between 1900 an 2100" do
      f_w = FiveWeekends.new(1900, 2100)
      expect(f_w.month_with_5w.count).to eq 201
    end
  end
end
