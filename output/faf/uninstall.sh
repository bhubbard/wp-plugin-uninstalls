#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'faf_advanced_filters_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'faf_process_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'faf_process_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'faf_process_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'faf_process_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'faf_featured_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'faf_featured_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'faf_featured_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'faf_featured_image'"
