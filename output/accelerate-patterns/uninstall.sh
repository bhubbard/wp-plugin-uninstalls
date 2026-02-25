#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_initial_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_current_version'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pattern_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pattern_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pattern_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pattern_description'"
