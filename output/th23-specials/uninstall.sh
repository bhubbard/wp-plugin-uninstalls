#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'th23_shared'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_update_cache' OR option_name LIKE '_site_transient_%_update_cache'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'th23_admin_screen_options-%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'th23_admin_screen_options-%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'th23_admin_screen_options-%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'th23_admin_screen_options-%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'th23_title_marked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'th23_title_marked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'th23_title_marked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'th23_title_marked'"
