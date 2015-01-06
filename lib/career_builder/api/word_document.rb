module CareerBuilder
  
  module API

    class WordDocument

      include HappyMapper

      element :file_name, String, :tag => "FileName"
      element :base64_data, String, :tag => "Base64Data"

    end

  end
  
end
