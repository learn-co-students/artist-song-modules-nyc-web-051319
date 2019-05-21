module Paramable

  module IntanceMethods

    def to_param
      name.downcase.gsub(' ', '-')
    end

  

  end
end
