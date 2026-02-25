#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wow_license_key_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_db_version'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wowp_likes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wowp_likes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wowp_likes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wowp_likes'"
