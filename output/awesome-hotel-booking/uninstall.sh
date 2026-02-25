#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ahbn_currency'
wp option delete 'ahbn_currency_pos'
wp option delete 'ahbn_expense_config'
wp option delete 'ahbn_global_types'
wp option delete 'ahbn_global_nos'
wp option delete 'ahbn_global_amenities'
wp option delete 'ahbn_global_paid_extras'
wp option delete 'ahbn_admin_email'
wp option delete 'ahbn_email_logo'
wp option delete 'ahbn_email_accent_color'
wp option delete 'ahbn_email_footer_text'
wp option delete 'ahbn_currency_code'
wp option delete 'ahbn_min_stay'
wp option delete 'ahbn_tax_rate'
wp option delete 'ahbn_weekend_booking'
wp option delete 'ahbn_instant_booking'
wp option delete 'ahbn_checkin_time'
wp option delete 'ahbn_checkout_time'
wp option delete 'ahbn_bank_details'
wp option delete 'ahbn_cash_instructions'
wp option delete 'ahbn_enable_pay_later'
wp option delete 'ahbn_enable_bank'
wp option delete 'ahbn_enable_cash'
wp option delete 'ahbn_pages_installed_v2'
wp option delete 'ahbn_custom_locations'

# Delete Transients
wp transient delete 'ahbn_dashboard_stats'
wp transient delete 'ahbn_all_rooms_list'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ahbn_book_customer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ahbn_book_customer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ahbn_book_customer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ahbn_book_customer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ahbn_book_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ahbn_book_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ahbn_book_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ahbn_book_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ahbn_book_checkin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ahbn_book_checkin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ahbn_book_checkin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ahbn_book_checkin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ahbn_book_checkout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ahbn_book_checkout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ahbn_book_checkout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ahbn_book_checkout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ahbn_book_room_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ahbn_book_room_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ahbn_book_room_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ahbn_book_room_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ahbn_room_no'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ahbn_room_no'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ahbn_room_no'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ahbn_room_no'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ahbn_book_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ahbn_book_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ahbn_book_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ahbn_book_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ahbn_book_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ahbn_book_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ahbn_book_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ahbn_book_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customer_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customer_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customer_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customer_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customer_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customer_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customer_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customer_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pickup_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pickup_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pickup_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pickup_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dropoff_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dropoff_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dropoff_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dropoff_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pickup_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pickup_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pickup_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pickup_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'return_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'return_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'return_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'return_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vehicle_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vehicle_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vehicle_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vehicle_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ahbn_book_payment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ahbn_book_payment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ahbn_book_payment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ahbn_book_payment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ahbn_room_type_select'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ahbn_room_type_select'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ahbn_room_type_select'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ahbn_room_type_select'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ahbn_room_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ahbn_room_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ahbn_room_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ahbn_room_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ahbn_book_guests'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ahbn_book_guests'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ahbn_book_guests'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ahbn_book_guests'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ahbn_expense_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ahbn_expense_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ahbn_expense_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ahbn_expense_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ahbn_type_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ahbn_type_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ahbn_type_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ahbn_type_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ahbn_room_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ahbn_room_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ahbn_room_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ahbn_room_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ahbn_max_adults'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ahbn_max_adults'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ahbn_max_adults'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ahbn_max_adults'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ahbn_max_children'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ahbn_max_children'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ahbn_max_children'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ahbn_max_children'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ahbn_room_amenities'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ahbn_room_amenities'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ahbn_room_amenities'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ahbn_room_amenities'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ahbn_room_paid_extras'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ahbn_room_paid_extras'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ahbn_room_paid_extras'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ahbn_room_paid_extras'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ahbn_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ahbn_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ahbn_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ahbn_status'"
