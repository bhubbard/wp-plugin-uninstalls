#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'load_stock_from_file'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'polylang_current_lang'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'polylang_current_lang'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'polylang_current_lang'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'polylang_current_lang'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'polylang'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'polylang'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'polylang'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'polylang'"
