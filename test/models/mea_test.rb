require 'test_helper'

class MeaTest < ActiveSupport::TestCase
   test "HABTM relationship" do
    Country.import "good_countries.csv"
    Mea.import "good_meas.csv"
    assert_equal 2, Mea.count
    uk = Country.find_by(name: "United Kingdom")
    assert_equal 2, Mea.joins(:countries).where(countries: { id: uk.id }).count
    fr = Country.find_by(name: "France")
    assert_equal 1, Mea.joins(:countries).where(countries: { id: fr.id }).count
   end
end