class Search < ActiveRecord::Base

  belongs_to :search_category
  
  def search_losts
    
    if search_category_id == 1
      losts = Lost.all
      losts = losts.where("title like ?", "%#{keywords}%") if keywords.present?
      losts = losts.where("location like ?", "%#{location}%") if location.present?
      losts = losts.where("description like ?", "%#{description}%") if description.present?
      losts = losts.where("email like ?", "%#{email}%") if email.present?
      losts = losts.where("name like ?", "%#{name}%") if name.present?
      losts = losts.where("phone like ?", "%#{phone}%") if phone.present?
      losts = losts.where("lost_date >= ?", start_date) if start_date.present?
      losts = losts.where("lost_date <= ?", end_date) if end_date.present?
      result = losts
    else
      founds = Found.all
      founds = founds.where("title like ?", "%#{keywords}%") if keywords.present?
      founds = founds.where("location like ?", "%#{location}%") if location.present?
      founds = founds.where("description like ?", "%#{description}%") if description.present?
      founds = founds.where("email like ?", "%#{email}%") if email.present?
      founds = founds.where("name like ?", "%#{name}%") if name.present?
      founds = founds.where("phone like ?", "%#{phone}%") if phone.present?
      founds = founds.where("found_date >= ?", start_date) if start_date.present?
      founds = founds.where("found_date <= ?", end_date) if end_date.present?
      result = founds
    end
  end
end
