#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rtc_queue_flush_rewrite_rules'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'category-image-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'category-image-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'category-image-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'category-image-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
