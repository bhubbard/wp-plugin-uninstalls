#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcafe_reservation_settings_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'preparing_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'preparing_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'preparing_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'preparing_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'delivery_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'delivery_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'delivery_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'delivery_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'location_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'location_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'location_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'location_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'location_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'location_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'location_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'location_image'"
