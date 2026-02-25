#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'magelon_export_interval'
wp option delete 'magelon_id_option'
wp option delete 'magelon_description_option'
wp option delete 'magelon_mpn_option'
wp option delete 'magelon_field_mapping'

# Delete Transients
wp transient delete 'magelon_export_admin_notice'
wp transient delete 'magelon_total_products'

# Clear Cron Jobs
wp cron event delete 'magelon_export_scheduled_event'
wp cron event delete 'magelon_export_event_checker'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
