#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_last_checked'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_pb_settings_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_pb_settings_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_pb_settings_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_pb_settings_errors_%'"
