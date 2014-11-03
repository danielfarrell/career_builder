module CareerBuilder

  module API

    class ResumeSearchResult

      include HappyMapper

      tag 'ResumeResultItem_V3'

      element :contact_email, String, :tag => "ContactEmail"
      element :contact_name, String, :tag => "ContactName"
      element :home_location, String, :tag => "HomeLocation"
      element :last_update, Date, :tag => "LastUpdate"
      element :resume_title, String, :tag => "ResumeTitle"
      element :job_title, String, :tag => "JobTitle"
      element :recent_employer, String, :tag => "RecentEmployer"
      element :recent_job_title, String, :tag => "RecentJobTitle"
      element :recent_pay, Integer, :tag => "RecentPay"
      element :resume_id, String, :tag => "ResumeID"
      element :user_did, String, :tag => "UserDID"
      element :contact_email_md5, String, :tag => "ContactEmailMD5"
      element :highest_degree, String, :tag => "HighestDegree"
      element :months_of_experience, String, :tag => "MonthsOfExperience"
      element :last_activity, String, :tag => "LastActivity"

    end

  end

end
