#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tw_lat_enable_email'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tw_lat_last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tw_lat_last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tw_lat_last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tw_lat_last_login'"
