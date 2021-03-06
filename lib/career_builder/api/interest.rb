module CareerBuilder
  
  module API

    class Interest

      include HappyMapper

      element :interest, String, :tag => "Interest"
      element :experience_months, Integer, :tag => "ExperienceMonths"

    end

  end
  
end
