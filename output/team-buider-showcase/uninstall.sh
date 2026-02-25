#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plwl-checks'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'plwl-team-images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'plwl-team-images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'plwl-team-images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'plwl-team-images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'plwl-team-settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'plwl-team-settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'plwl-team-settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'plwl-team-settings'"
