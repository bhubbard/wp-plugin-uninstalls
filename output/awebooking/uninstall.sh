#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'awebooking_admin_notices'
wp option delete 'awebooking_room_type_permalink'
wp option delete 'awebooking_hotel_permalink'
wp option delete 'awebooking_premium_api_code'
wp option delete 'awebooking_version'
wp option delete 'awebooking_db_version'

# Delete Transients
wp transient delete 'awebooking_premium_themes'
wp transient delete 'awebooking_premium_addons'
wp transient delete '_awebooking_activation_redirect'
wp transient delete 'awebooking_installing'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"
wp transient delete '_suru_libs_google_fonts'

# Clear Cron Jobs
wp cron event delete 'abrs_schedule_update_checkout_status'
wp cron event delete 'abrs_schedule_clean_booking'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_maximum_occupancy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_maximum_occupancy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_maximum_occupancy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_maximum_occupancy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hotel_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hotel_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hotel_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hotel_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_service_operation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_service_operation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_service_operation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_service_operation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_operation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_operation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_operation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_operation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_service_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_service_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_service_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_service_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
