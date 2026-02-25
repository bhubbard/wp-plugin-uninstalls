#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plugin_ntracker_settings'

# Clear Cron Jobs
wp cron event delete 'lt_clear_max'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'trackpage_checkbox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'trackpage_checkbox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'trackpage_checkbox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'trackpage_checkbox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'trackpagetag_textbox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'trackpagetag_textbox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'trackpagetag_textbox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'trackpagetag_textbox'"
