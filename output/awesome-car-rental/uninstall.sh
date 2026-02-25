#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'acrb_currency'
wp option delete 'acrb_custom_features'
wp option delete 'acrb_custom_amenities'
wp option delete 'acrb_custom_locations'
wp option delete 'acrb_currency_pos'
wp option delete 'acrb_admin_email'
wp option delete 'acrb_email_logo'
wp option delete 'acrb_email_accent_color'
wp option delete 'acrb_email_footer_text'
wp option delete 'acrb_currency_code'
wp option delete 'acrb_min_rent_days'
wp option delete 'acrb_buffer_time'
wp option delete 'acrb_min_age'
wp option delete 'acrb_weekend_rental'
wp option delete 'acrb_rental_unit'
wp option delete 'acrb_pickup_start'
wp option delete 'acrb_pickup_end'
wp option delete 'acrb_bank_details'
wp option delete 'acrb_cash_instructions'
wp option delete 'acrb_enable_pay_later'
wp option delete 'acrb_enable_bank'
wp option delete 'acrb_enable_cash'
wp option delete 'acrb_pages_installed_v2'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'acrb_currency_symbol'
wp option delete 'acrb_single_car_page'
wp option delete 'acrb_success_page'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'car_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'car_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'car_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'car_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pickup_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pickup_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pickup_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pickup_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'return_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'return_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'return_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'return_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dropoff_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dropoff_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dropoff_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dropoff_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vehicle_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vehicle_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vehicle_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vehicle_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payment_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acrb_car_video'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acrb_car_video'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acrb_car_video'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acrb_car_video'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acrb_car_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acrb_car_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acrb_car_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acrb_car_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'price_per_day'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'price_per_day'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'price_per_day'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'price_per_day'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acrb_default_pickup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acrb_default_pickup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acrb_default_pickup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acrb_default_pickup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acrb_default_dropoff'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acrb_default_dropoff'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acrb_default_dropoff'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acrb_default_dropoff'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acrb_car_features'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acrb_car_features'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acrb_car_features'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acrb_car_features'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acrb_car_amenities'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acrb_car_amenities'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acrb_car_amenities'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acrb_car_amenities'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vin_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vin_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vin_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vin_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acrb_type_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acrb_type_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acrb_type_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acrb_type_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acrb_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acrb_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acrb_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acrb_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acrb_user_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acrb_user_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acrb_user_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acrb_user_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acrb_user_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acrb_user_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acrb_user_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acrb_user_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phone'"
