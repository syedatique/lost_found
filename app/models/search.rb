class Search < ActiveRecord::Base

  mount_uploader :image, StuffImageUploader
  def search_losts
     
   losts = Lost.all
   
   losts = losts.where("title like ?", "%#{keywords}%") if keywords.present?
   losts = losts.where("location like ?", "%#{location}%") if location.present?
   losts = losts.where("description like ?", "%#{description}%") if description.present?
   losts = losts.where("email like ?", "%#{email}%") if email.present?
   losts = losts.where("name like ?", "%#{name}%") if name.present?
   losts = losts.where("phone like ?", "%#{phone}%") if phone.present?
   losts = losts.where("lost_date >= ?", start_date) if start_date.present?
   losts = losts.where("lost_date <= ?", end_date) if end_date.present?
   
   losts

   # founds = Found.all
   
   # founds = founds.where("title like ?", "%#{found_keywords}%") if found_keywords.present?
   # founds = founds.where("location like ?", "%#{found_location}%") if found_location.present?
   # founds = founds.where("description like ?", "%#{found_description}%") if found_description.present?
   # founds = founds.where("email like ?", "%#{found_email}%") if found_email.present?
   # founds = founds.where("name like ?", "%#{found_name}%") if found_name.present?
   # founds = founds.where("phone like ?", "%#{found_phone}%") if found_phone.present?
   # founds = founds.where("found_date >= ?", found_start_date) if found_start_date.present?
   # founds = founds.where("found_date <= ?", found_end_date) if found_end_date.present?
   
   # founds
  end

end
