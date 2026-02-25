#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cppw_email_info'
wp option delete 'cppw_hide_shipping_address'
wp option delete 'cppw_instructions'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'flexible_shipping_methods_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'betrs_shipping_options-%'"
wp option delete 'cppw_checkout_default_empty'
wp option delete 'cppw_nearby_points'
wp option delete 'cppw_total_points'
wp option delete 'cppw_mapbox_public_token'
wp option delete 'cppw_google_api_key'
wp option delete 'cppw_display_phone'
wp option delete 'cppw_display_schedule'
wp option delete 'cppw_points_last_update_try_datetime'
wp option delete 'cppw_points'
wp option delete 'cppw_points_last_update_datetime'
wp option delete 'cppw_points_last_update_server'

# Delete Transients
wp transient delete 'webdados_dpd_portugal_pro_nag'
wp transient delete 'webdados_dpd_pickup_pro_nag'

# Clear Cron Jobs
wp cron event delete 'cppw_update_pickup_list'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_was_shipping_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_was_shipping_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_was_shipping_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_was_shipping_method'"
