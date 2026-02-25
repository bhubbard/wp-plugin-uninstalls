#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gotrl_check_images_in_page'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gotrl_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gotr_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gotr_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gotr_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gotr_metadata'"
