json.extract! reservation
	json.id reservation.id
	json.start reservation.init_date
	json.end reservation.end_date
	json.url subsidiary_ubication_reservation_url(params[:subsidiary_id],params[:ubication_id],reservation, format: :html)
	




#  json.extract! reservation, :id, :init_date , :end_date 
# # json.extract! 
# # 	json.id reservation.id
# # 	json.start reservation.init_date
# # 	json.end reservation.end_date
# #   