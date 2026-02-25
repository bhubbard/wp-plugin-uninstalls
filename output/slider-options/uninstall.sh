#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smsd-meta_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smsd-meta_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smsd-meta_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smsd-meta_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smsd-meta_target'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smsd-meta_target'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smsd-meta_target'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smsd-meta_target'"
