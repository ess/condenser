require 'belafonte'

require 'condenser/app/distill'

module Condenser
  module App
    class Main < Belafonte::App
      title 'condenser'
      summary 'An ACI creation tool'

      mount Condenser::App::Distill
    end
  end
end
