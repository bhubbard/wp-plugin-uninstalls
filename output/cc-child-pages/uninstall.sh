#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cc_child_pages'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"

# Delete Transients
wp transient delete 'ccchildpages_dash_stats'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ccchildpages_hide_dash_widget'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ccchildpages_hide_dash_widget'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ccchildpages_hide_dash_widget'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ccchildpages_hide_dash_widget'"
