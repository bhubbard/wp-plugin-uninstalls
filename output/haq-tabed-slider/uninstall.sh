#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'HAQTS_default_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'haqts_total_slide_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'haqts_total_slide_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'haqts_total_slide_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'haqts_total_slide_details'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'haqts_total_images_no'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'haqts_total_images_no'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'haqts_total_images_no'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'haqts_total_images_no'"
