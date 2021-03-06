require "./spec_helper"

describe Mm do
    it "converts Mm to in" do
        Mm.new(25.4).to_in.value.should eq(In.new(1).value)
        Mm.new(1).to_in.value.should eq(In.new(1/25.4).value)
    end

    it "converts mm to cm" do
        Mm.new(10).to_cm.value.should eq(Cm.new(1).value)
        Mm.new(1000).to_cm.value.should eq(Cm.new(100).value)
    end

    it "converts mm to ft" do
        Mm.new(25.4).to_ft.value.should eq(Ft.new(1/12).value)
        Mm.new(12).to_ft.value.round(10).should eq(Ft.new(1/25.4).value.round(10))
    end

    it "converts mm to dm" do
        Mm.new(10).to_dm.value.should eq(Dm.new(1/10).value)
        Mm.new(1).to_dm.value.should eq(Dm.new(1/100).value)
    end

    it "converts mm to mi" do
        Mm.new(10*2.54).to_mi.value.should eq(Mi.new(1/(5280*12)).value)
        Mm.new(12).to_mi.value.round(10).should eq(Mi.new(1/25.4/5280).value.round(10))
    end
end