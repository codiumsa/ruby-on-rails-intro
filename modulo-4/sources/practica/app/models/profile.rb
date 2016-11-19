class Profile < ActiveRecord::Base
  belongs_to :user
  validates :gender, :inclusion => ['male', 'female']
  validate :custom_validation
  validates :first_name, :exclusion => ['Sue'], :if => "gender=='male'"

  def custom_validation
    if first_name.nil? and last_name.nil?
      errors.add(:custom_validation, "first_name y last_name son nulos, ingrese valores")
    end
  end

  def self.get_all_profiles(min, max)
    Profile.where("birth_year between :min and :max", min: min, max: max).order(birth_year: :asc)
  end

end
