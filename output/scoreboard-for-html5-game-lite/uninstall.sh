#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sfhg_scoreboard_settings'
wp option delete 'sfhg_data'
wp option delete 'sfhg_pluginver'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sfhg_admin_ignore_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sfhg_admin_ignore_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sfhg_admin_ignore_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sfhg_admin_ignore_notice'"
