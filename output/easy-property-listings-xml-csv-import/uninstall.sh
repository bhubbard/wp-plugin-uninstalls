#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ignore'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_notice_ignore'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'property_images_mod_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'property_images_mod_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'property_images_mod_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'property_images_mod_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'property_images_mod_date_old'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'property_images_mod_date_old'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'property_images_mod_date_old'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'property_images_mod_date_old'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'property_mod_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'property_mod_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'property_mod_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'property_mod_date'"
