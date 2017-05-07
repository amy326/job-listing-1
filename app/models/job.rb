class Job < ApplicationRecord

   mount_uploader :image, ImageUploader
   validates :title, presence: true
   validates :time_lower_bound, presence: true
   validates :time_upper_bound, presence: true

   has_many :resumes
   scope :published, -> { where(is_hidden: false)}
   scope :recent, -> { order('created_at DESC')}

   def publish!
      self.is_hidden = false
      self.save
   end
   def hide!
      self.is_hidden = true
      self.save
   end

end
