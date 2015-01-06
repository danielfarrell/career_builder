module CareerBuilder

  module API

    class Resume

      # Sample response:
      # http://ws.careerbuilder.com/resumes/resumes.asmx/V2_GetResume_SampleResponse

      include HappyMapper

      module RawResponse
        XML_START = %Q{<?xml version="1.0" encoding="utf-8"?>\n<string xmlns="http://ws.careerbuilder.com/resumes/">}
        XML_END   = %Q{</string>}

        def raw_response
          XML_START + @raw_response + XML_END
        end
      end

      def self.parse(xml, options = {})
        resume = super
        resume.instance_variable_set(:"@raw_response", xml)
        resume.extend RawResponse
        resume
      end

      tag 'Packet'

      # element :home_location, String, :tag => "HomeLocation"
      # element :last_update, Date, :tag => "LastUpdate"
      # element :title, String, :tag => "ResumeTitle"
      # element :job_title, String, :tag => "JobTitle"
      # element :recent_employer, String, :tag => "RecentEmployer"
      # element :recent_job_title, String, :tag => "RecentJobTitle"
      # element :recent_pay, String, :tag => "RecentPay"
      # element :user_did, String, :tag => "UserDID"
      # element :contact_email_md5, String, :tag => "ContactEmailMD5"

      has_one :home_location, Location, :tag => "HomeLocation"
      has_many :relocations, Location, :tag => "ExtLocation"

      has_one :most_recent_pay, Pay, :tag => "MostRecentPay"
      has_one :desired_pay, Pay, :tag => "DesiredPay"

      has_one :original_word_doc, WordDocument, :tag => "OriginalWordDoc"

      has_many :interests, Interest, :tag => "ExtInterest"
      has_many :companies, Company, :tag => "ExtCompany"
      has_many :schools, School, :tag => "ExtSchool"
      has_many :desired_job_types, JobType, :tag => "DesiredJobTypes"
      has_many :languages, Language, :tag => "Languages"
      has_many :desired_shift_preferences, ShiftPreference, :tag => "DesiredShiftPreferences"

      element :timestamp, Time, :tag => "TimeStamp"
      element :resume_id, String, :tag => "ResumeID"
      element :resume_title, String, :tag => "ResumeTitle"
      element :contact_name, String, :tag => "ContactName"
      element :contact_email, String, :tag => "ContactEmail"
      element :contact_phone, String, :tag => "ContactPhone"
      element :max_commute_miles, Integer, :tag => "MaxCommuteMiles"
      element :travel_preference, String, :tag => "TravelPreference"
      element :currently_employed, String, :tag => "CurrentlyEmployed"
      element :most_recent_title, String, :tag => "MostRecentTitle"
      element :experience_months, Integer, :tag => "ExperienceMonths"
      element :managed_others, String, :tag => "//ManagedOthers"
      element :number_managed, Integer, :tag => "//NumberManaged"
      element :jobs_last_three_years, Integer, :tag => "JobsLastThreeYears"
      element :last_job_tenure_months, Integer, :tag => "LastJobTenureMonths"
      element :security_clearance, String, :tag => "SecurityClearance"
      element :felony_convictions, String, :tag => "FelonyConvictions"
      element :highest_degree, String, :tag => "HighestDegree"
      element :certifications, String, :tag => "Certifications"
      element :motivation_to_change_jobs, String, :tag => "MotivationToChangeJobs"
      element :employment_type, String, :tag => "EmploymentType"
      element :last_updated, Time, :tag => "LastUpdated"
      element :text, String, :tag => "ResumeText"
      element :military_experience, String, :tag => "MilitaryExperience"
      element :warning, String, :tag => "Warning"

    end

  end

end
