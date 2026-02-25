#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'colorful-categories-adbv'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_colors'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cc_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cc_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cc_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cc_color'"
