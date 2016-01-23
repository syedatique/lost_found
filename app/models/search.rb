class Search < ActiveRecord::Base


  def search_losts
     
   losts = Lost.all
   
   losts = losts.where("title like ?", "%#{keywords}%") if keywords.present?
   losts = losts.where("location like ?", "#{location}") if location.present?
   losts = losts.where("description like ?", "#{description}") if description.present?

   # losts = Lost.where(created_at: [params[:start_date]..params[:end_date]])

   losts = losts.where("lost_date >= ?", start_date) if start_date.present?
   losts = losts.where("lost_date <= ?", end_date) if end_date.present?
   
   return losts
  end

end
