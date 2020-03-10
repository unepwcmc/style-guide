require 'wcmc_components'

class Country < ApplicationRecord
  has_and_belongs_to_many :meas

  include WcmcComponents::Loadable

end
