#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bwpl_slug'
wp option delete 'bwpl_wp_version'
wp option delete 'daf_options'
wp option delete 'bwpl_known_ips'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_purchased'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_donated'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-notice-dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-notice-dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-notice-dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-notice-dismissed'"
