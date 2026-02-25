#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'citycourier_working_hours'
wp option delete 'citycourier_email'
wp option delete 'citycourier_google_api_key'
wp option delete 'citycourier_country'
wp option delete 'citycourier_currency'
wp option delete 'citycourier_km_price'
wp option delete 'citycourier_minimum_price'
wp option delete 'citycourier_max_distance'
wp option delete 'citycourier_whatsapp_number'
wp option delete 'citycourier_notify_admin'
wp option delete 'citycourier_notify_whatsapp'
wp option delete 'citycourier_zone_enabled'
wp option delete 'citycourier_zone_radius_km'
wp option delete 'citycourier_zone_center_lat'
wp option delete 'citycourier_zone_center_lng'
wp option delete 'citycourier_zone_address'
wp option delete 'citycourier_clock_offset_minutes'
wp option delete 'citycourier_license_status'
wp option delete 'citycourier_form_page_id'
wp option delete 'citycourier_enable_driver_panel'
wp option delete 'citycourier_currency_symbol'
wp option delete 'citycourier_zone'
wp option delete 'citycourier_zone_name'
wp option delete 'citycourier_map_center_lat'
wp option delete 'citycourier_map_center_lng'
wp option delete 'citycourier_city_lat'
wp option delete 'citycourier_city_lng'
wp option delete 'citycourier_product_id'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cc_inactive_warned_%' OR option_name LIKE '_site_transient_cc_inactive_warned_%'"

# Clear Cron Jobs
wp cron event delete 'citycourier_check_driver_inactive'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cc_address_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cc_address_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cc_address_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cc_address_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cc_address_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cc_address_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cc_address_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cc_address_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cc_slot_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cc_slot_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cc_slot_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cc_slot_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cc_slot_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cc_slot_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cc_slot_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cc_slot_end'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cc_distance_km'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cc_distance_km'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cc_distance_km'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cc_distance_km'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cc_distance_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cc_distance_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cc_distance_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cc_distance_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cc_duration_min'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cc_duration_min'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cc_duration_min'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cc_duration_min'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cc_duration_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cc_duration_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cc_duration_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cc_duration_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cc_sender_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cc_sender_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cc_sender_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cc_sender_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cc_user_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cc_user_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cc_user_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cc_user_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cc_user_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cc_user_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cc_user_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cc_user_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cc_pickup_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cc_pickup_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cc_pickup_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cc_pickup_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cc_delivery_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cc_delivery_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cc_delivery_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cc_delivery_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cc_package_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cc_package_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cc_package_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cc_package_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cc_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cc_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cc_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cc_weight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cc_pickup_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cc_pickup_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cc_pickup_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cc_pickup_details'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cc_delivery_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cc_delivery_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cc_delivery_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cc_delivery_details'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cc_total_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cc_total_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cc_total_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cc_total_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cc_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cc_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cc_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cc_payment_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cc_distance_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cc_distance_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cc_distance_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cc_distance_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cc_driver_lat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cc_driver_lat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cc_driver_lat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cc_driver_lat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cc_driver_lng'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cc_driver_lng'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cc_driver_lng'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cc_driver_lng'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cc_driver_updated_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cc_driver_updated_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cc_driver_updated_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cc_driver_updated_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cc_review_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cc_review_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cc_review_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cc_review_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cc_review_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cc_review_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cc_review_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cc_review_text'"
