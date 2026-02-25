#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aqs_all_photos_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aqs_all_photos_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aqs_all_photos_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aqs_all_photos_details'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aqs_total_images_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aqs_total_images_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aqs_total_images_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aqs_total_images_count'"
